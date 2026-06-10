import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:airta/services/subscription_service.dart';

/// Manages the referral program:
/// - Tracks pending/credited referrals by phone number
/// - Awards credits when referred users run their first report
/// - Grants a free 31-day Standard membership trial at 5 credits
///   (will switch to Pro Plus trial when Pro tiers launch)
/// - Handles trial expiry and reversion to prior tier
class ReferralService extends ChangeNotifier {
  static final ReferralService _instance = ReferralService._internal();
  factory ReferralService() => _instance;
  ReferralService._internal();

  // SharedPreferences keys
  static const String _pendingReferralsKey = 'referral_pending_numbers_v1';
  static const String _creditedReferralsKey = 'referral_credited_numbers_v1';
  static const String _creditCountKey = 'referral_credit_count_v1';
  static const String _trialActivatedKey = 'referral_trial_activated_v1';
  static const String _trialStartKey = 'referral_trial_start_v1';
  static const String _preTrialTierKey = 'referral_pre_trial_tier_v1';
  static const String _deviceIdKey = 'referral_device_id_v1';

  // Configuration
  static const int requiredCredits = 5;
  static const int trialDurationDays = 31;

  /// The tier awarded for referral reward.
  /// Currently Standard; will switch to ProPlus when those tiers are live.
  static const MembershipTier rewardTier = MembershipTier.standard;

  // State
  List<String> _pendingNumbers = [];
  List<String> get pendingNumbers => List.unmodifiable(_pendingNumbers);

  List<String> _creditedNumbers = [];
  List<String> get creditedNumbers => List.unmodifiable(_creditedNumbers);

  int _creditCount = 0;
  int get creditCount => _creditCount;

  bool _trialActivated = false;
  bool get trialActivated => _trialActivated;

  DateTime? _trialStart;
  DateTime? get trialStart => _trialStart;

  MembershipTier _preTrialTier = MembershipTier.free;

  String _deviceId = '';
  String get deviceId => _deviceId;

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  /// Progress toward reward (0.0 to 1.0)
  double get progress => (_creditCount / requiredCredits).clamp(0.0, 1.0);

  /// Whether the user has earned the referral reward
  bool get hasEarnedReward => _creditCount >= requiredCredits;

  /// Whether a trial is currently active and not expired
  bool get isTrialActive {
    if (!_trialActivated || _trialStart == null) return false;
    final expiry = _trialStart!.add(const Duration(days: trialDurationDays));
    return DateTime.now().isBefore(expiry);
  }

  /// Days remaining in the trial, or 0 if expired/not active
  int get trialDaysRemaining {
    if (!_trialActivated || _trialStart == null) return 0;
    final expiry = _trialStart!.add(const Duration(days: trialDurationDays));
    final remaining = expiry.difference(DateTime.now()).inDays;
    return remaining.clamp(0, trialDurationDays);
  }

  /// Initialize the service — load local data and check trial status.
  Future<void> initialize() async {
    if (_isInitialized) return;

    final prefs = await SharedPreferences.getInstance();

    // Load pending numbers
    final pendingRaw = prefs.getStringList(_pendingReferralsKey);
    if (pendingRaw != null) _pendingNumbers = pendingRaw;

    // Load credited numbers
    final creditedRaw = prefs.getStringList(_creditedReferralsKey);
    if (creditedRaw != null) _creditedNumbers = creditedRaw;

    // Load credit count
    _creditCount = prefs.getInt(_creditCountKey) ?? 0;

    // Load trial state
    _trialActivated = prefs.getBool(_trialActivatedKey) ?? false;
    final trialStartMs = prefs.getInt(_trialStartKey);
    if (trialStartMs != null) {
      _trialStart = DateTime.fromMillisecondsSinceEpoch(trialStartMs);
    }
    final preTrialTierStr = prefs.getString(_preTrialTierKey);
    if (preTrialTierStr != null) {
      _preTrialTier = MembershipTier.values.firstWhere(
        (t) => t.name == preTrialTierStr,
        orElse: () => MembershipTier.free,
      );
    }

    // Generate or load device ID for Firestore
    _deviceId = prefs.getString(_deviceIdKey) ?? '';
    if (_deviceId.isEmpty) {
      _deviceId = 'device_${DateTime.now().millisecondsSinceEpoch}';
      await prefs.setString(_deviceIdKey, _deviceId);
    }

    // Check if trial has expired and revert
    await _checkTrialExpiry();

    _isInitialized = true;
    notifyListeners();
  }

  /// Save current state to SharedPreferences.
  Future<void> _save() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_pendingReferralsKey, _pendingNumbers);
    await prefs.setStringList(_creditedReferralsKey, _creditedNumbers);
    await prefs.setInt(_creditCountKey, _creditCount);
    await prefs.setBool(_trialActivatedKey, _trialActivated);
    if (_trialStart != null) {
      await prefs.setInt(_trialStartKey, _trialStart!.millisecondsSinceEpoch);
    }
    await prefs.setString(_preTrialTierKey, _preTrialTier.name);
  }

  // ─── REFERRING USER ACTIONS ────────────────────────────────────────────────

  /// Normalize a phone number to a consistent format for matching.
  /// Strips all non-digit characters, keeps last 10 digits for US numbers,
  /// or full number for international.
  static String normalizePhoneNumber(String raw) {
    // Remove all non-digit characters
    final digitsOnly = raw.replaceAll(RegExp(r'[^\d]'), '');
    // For US numbers (11 digits starting with 1), take last 10
    if (digitsOnly.length == 11 && digitsOnly.startsWith('1')) {
      return digitsOnly.substring(1);
    }
    // For 10-digit US numbers, use as-is
    if (digitsOnly.length == 10) return digitsOnly;
    // For international, use full digits
    return digitsOnly;
  }

  /// Add a phone number to the pending referral list.
  /// Called when the user selects a contact and fires the SMS intent.
  Future<void> addPendingReferral(String phoneNumber) async {
    final normalized = normalizePhoneNumber(phoneNumber);
    if (normalized.isEmpty) return;
    if (_pendingNumbers.contains(normalized)) return; // Already pending
    if (_creditedNumbers.contains(normalized)) return; // Already credited

    _pendingNumbers.add(normalized);
    await _save();

    // Also store in Firestore for cross-device attribution
    await _syncToFirestore();

    notifyListeners();
  }

  /// Sync pending referrals to Firestore so other devices can check them.
  Future<void> _syncToFirestore() async {
    try {
      final firestore = FirebaseFirestore.instance;
      await firestore.collection('referrals').doc(_deviceId).set({
        'deviceId': _deviceId,
        'pendingNumbers': _pendingNumbers,
        'creditedNumbers': _creditedNumbers,
        'creditCount': _creditCount,
        'trialActivated': _trialActivated,
        'lastUpdated': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));
    } catch (e) {
      debugPrint('ReferralService._syncToFirestore error: $e');
      // Non-fatal — local storage is primary
    }
  }

  // ─── ATTRIBUTION CHECK (called after any user runs their first report) ─────

  /// Check if a phone number matches any pending referral across ALL users.
  /// Called after a user runs their first report with the phone number
  /// of the conversation partner.
  ///
  /// Returns true if this resulted in a credit being awarded to someone.
  Future<bool> checkAndCreditReferral(String reportedPhoneNumber) async {
    final normalized = normalizePhoneNumber(reportedPhoneNumber);
    if (normalized.isEmpty) return false;

    // First check locally — does this number match one of OUR pending referrals?
    // (Self-referral attribution on the same device)
    if (_pendingNumbers.contains(normalized) &&
        !_creditedNumbers.contains(normalized)) {
      _pendingNumbers.remove(normalized);
      _creditedNumbers.add(normalized);
      _creditCount++;
      await _save();
      await _syncToFirestore();
      notifyListeners();
      return true;
    }

    // Then check Firestore — does this number match ANY other user's pending list?
    try {
      final firestore = FirebaseFirestore.instance;
      final snapshot = await firestore
          .collection('referrals')
          .where('pendingNumbers', arrayContains: normalized)
          .get();

      for (final doc in snapshot.docs) {
        if (doc.id == _deviceId) continue; // Skip self (already checked above)

        // Credit the referring user in Firestore
        final data = doc.data();
        final pending = List<String>.from(data['pendingNumbers'] ?? []);
        final credited = List<String>.from(data['creditedNumbers'] ?? []);
        final count = (data['creditCount'] as int?) ?? 0;

        if (pending.contains(normalized) && !credited.contains(normalized)) {
          pending.remove(normalized);
          credited.add(normalized);
          await firestore.collection('referrals').doc(doc.id).update({
            'pendingNumbers': pending,
            'creditedNumbers': credited,
            'creditCount': count + 1,
            'lastCreditedAt': FieldValue.serverTimestamp(),
          });
          return true; // Credited another user
        }
      }
    } catch (e) {
      debugPrint('ReferralService.checkAndCreditReferral Firestore error: $e');
      // Non-fatal — local check still happened
    }

    return false;
  }

  // ─── REWARD ACTIVATION ─────────────────────────────────────────────────────

  /// Activate the referral reward (free 31-day Standard membership).
  /// Call this when the user taps "Start Free Month" after earning 5 credits.
  Future<void> activateRewardTrial() async {
    if (!hasEarnedReward) return;
    if (_trialActivated) return; // Already used

    // Store current tier before granting trial
    final subService = SubscriptionService();
    _preTrialTier = subService.activeTier;
    _trialActivated = true;
    _trialStart = DateTime.now();

    await _save();
    await _syncToFirestore();

    // Record purchase source as referral_reward
    await subService.recordPurchaseSource('referral_reward', 'referral');

    // Activate the reward tier
    // Note: This uses SharedPreferences to set the active tier directly
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('active_subscription_tier', rewardTier.name);

    notifyListeners();
  }

  /// Check if trial has expired and revert to pre-trial tier.
  Future<void> _checkTrialExpiry() async {
    if (!_trialActivated || _trialStart == null) return;

    final expiry = _trialStart!.add(const Duration(days: trialDurationDays));
    if (DateTime.now().isAfter(expiry)) {
      // Trial expired — revert to previous tier
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('active_subscription_tier', _preTrialTier.name);
      debugPrint('Referral trial expired. Reverted to ${_preTrialTier.name}');
    }
  }

  // ─── PRE-POPULATED REFERRAL MESSAGE ────────────────────────────────────────

  /// Generate the pre-populated SMS message for a contact.
  static String getReferralMessage(String contactName) {
    return 'Hey $contactName! I found this app called AIRTA – AI Relationship '
        'Analyzer and it\'s honestly eye-opening. It reads your text conversations '
        'and uses AI to detect toxic patterns, manipulation, gaslighting — the works. '
        'You should check it out: https://airta.net/releases/airta-demo.apk';
  }

  /// Get the number of referrals still needed to earn the reward.
  int get creditsRemaining => (requiredCredits - _creditCount).clamp(0, requiredCredits);
}

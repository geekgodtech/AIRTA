#!/usr/bin/env python3
"""Modify referral system to be cyclical - resets after each 5-referral reward"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\services\referral_service.dart"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# 1. Add new storage keys for cyclical tracking
old_keys = '''  // SharedPreferences keys
  static const String _pendingReferralsKey = 'referral_pending_numbers_v1';
  static const String _creditedReferralsKey = 'referral_credited_numbers_v1';
  static const String _creditCountKey = 'referral_credit_count_v1';
  static const String _trialActivatedKey = 'referral_trial_activated_v1';
  static const String _trialStartKey = 'referral_trial_start_v1';
  static const String _preTrialTierKey = 'referral_pre_trial_tier_v1';
  static const String _deviceIdKey = 'referral_device_id_v1';'''

new_keys = '''  // SharedPreferences keys
  static const String _pendingReferralsKey = 'referral_pending_numbers_v1';
  static const String _creditedReferralsKey = 'referral_credited_numbers_v1';
  static const String _creditCountKey = 'referral_credit_count_v1';
  static const String _trialActivatedKey = 'referral_trial_activated_v1';
  static const String _trialStartKey = 'referral_trial_start_v1';
  static const String _preTrialTierKey = 'referral_pre_trial_tier_v1';
  static const String _deviceIdKey = 'referral_device_id_v1';
  static const String _cyclesCompletedKey = 'referral_cycles_completed_v1';
  static const String _totalReferralsKey = 'referral_total_count_v1';'''

content = content.replace(old_keys, new_keys)

# 2. Add new state variables after _deviceId
old_state = '''  String _deviceId = '';
  String get deviceId => _deviceId;

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;'''

new_state = '''  String _deviceId = '';
  String get deviceId => _deviceId;

  int _cyclesCompleted = 0;
  int get cyclesCompleted => _cyclesCompleted;

  int _totalReferralsAllTime = 0;
  int get totalReferralsAllTime => _totalReferralsAllTime;

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  /// Whether the user has earned a reward in the current cycle
  bool get hasEarnedReward => _creditCount >= requiredCredits;'''

content = content.replace(old_state, new_state)

# 3. Remove the old hasEarnedReward getter (line 62)
old_getter = '''  /// Whether the user has earned the referral reward
  bool get hasEarnedReward => _creditCount >= requiredCredits;

  /// Whether a trial is currently active and not expired'''

new_getter = '''  /// Whether a trial is currently active and not expired'''

content = content.replace(old_getter, new_getter)

# 4. Update initialize() to load new fields
old_init = '''    // Load credit count
    _creditCount = prefs.getInt(_creditCountKey) ?? 0;

    // Load trial state'''

new_init = '''    // Load credit count
    _creditCount = prefs.getInt(_creditCountKey) ?? 0;

    // Load cycle tracking
    _cyclesCompleted = prefs.getInt(_cyclesCompletedKey) ?? 0;
    _totalReferralsAllTime = prefs.getInt(_totalReferralsKey) ?? 0;

    // Load trial state'''

content = content.replace(old_init, new_init)

# 5. Update _save() to persist new fields
old_save = '''    await prefs.setStringList(_pendingReferralsKey, _pendingNumbers);
    await prefs.setStringList(_creditedReferralsKey, _creditedNumbers);
    await prefs.setInt(_creditCountKey, _creditCount);
    await prefs.setBool(_trialActivatedKey, _trialActivated);'''

new_save = '''    await prefs.setStringList(_pendingReferralsKey, _pendingNumbers);
    await prefs.setStringList(_creditedReferralsKey, _creditedNumbers);
    await prefs.setInt(_creditCountKey, _creditCount);
    await prefs.setInt(_cyclesCompletedKey, _cyclesCompleted);
    await prefs.setInt(_totalReferralsKey, _totalReferralsAllTime);
    await prefs.setBool(_trialActivatedKey, _trialActivated);'''

content = content.replace(old_save, new_save)

# 6. Update _syncToFirestore to include cycle data
old_sync = '''      await firestore.collection('referrals').doc(_deviceId).set({
        'deviceId': _deviceId,
        'pendingNumbers': _pendingNumbers,
        'creditedNumbers': _creditedNumbers,
        'creditCount': _creditCount,
        'trialActivated': _trialActivated,
        'lastUpdated': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));'''

new_sync = '''      await firestore.collection('referrals').doc(_deviceId).set({
        'deviceId': _deviceId,
        'pendingNumbers': _pendingNumbers,
        'creditedNumbers': _creditedNumbers,
        'creditCount': _creditCount,
        'cyclesCompleted': _cyclesCompleted,
        'totalReferralsAllTime': _totalReferralsAllTime,
        'trialActivated': _trialActivated,
        'lastUpdated': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));'''

content = content.replace(old_sync, new_sync)

# 7. Modify activateRewardTrial to reset for next cycle
old_activate = '''  /// Activate the referral reward (free 31-day Standard membership).
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
  }'''

new_activate = '''  /// Activate the referral reward (free 31-day Standard membership).
  /// Call this when the user taps "Start Free Month" after earning 5 credits.
  /// After claiming, resets the counter so they can earn again (cyclical).
  Future<void> activateRewardTrial() async {
    if (!hasEarnedReward) return;

    // Store current tier before granting trial
    final subService = SubscriptionService();
    _preTrialTier = subService.activeTier;
    _trialActivated = true;
    _trialStart = DateTime.now();

    // Track completed cycle
    _cyclesCompleted++;

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

  /// Reset the referral counter for the next cycle.
  /// Call this after the user claims their reward to start earning again.
  Future<void> resetForNextCycle() async {
    // Save total before reset
    _totalReferralsAllTime += _creditCount;

    // Reset current cycle
    _creditCount = 0;
    _trialActivated = false;
    _trialStart = null;

    // Clear credited numbers for the new cycle (keep pending as they might still convert)
    _creditedNumbers = [];

    await _save();
    await _syncToFirestore();

    notifyListeners();
  }

  /// Check if user can start a new cycle (has claimed current reward and trial is done)
  bool get canStartNewCycle {
    if (!hasEarnedReward) return false; // Haven't earned current cycle
    if (_trialActivated && isTrialActive) return false; // Still in trial
    return true; // Ready for next cycle
  }'''

content = content.replace(old_activate, new_activate)

# 8. Update the checkAndCreditReferral to track all-time total
old_credit = '''      _pendingNumbers.remove(normalized);
      _creditedNumbers.add(normalized);
      _creditCount++;
      await _save();'''

new_credit = '''      _pendingNumbers.remove(normalized);
      _creditedNumbers.add(normalized);
      _creditCount++;
      _totalReferralsAllTime++;
      await _save();'''

content = content.replace(old_credit, new_credit)

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Made referrals cyclical with the following changes:")
print("1. Added _cyclesCompleted counter")
print("2. Added _totalReferralsAllTime counter")
print("3. Modified activateRewardTrial() to track cycles")
print("4. Added resetForNextCycle() to reset after claiming")
print("5. Added canStartNewCycle getter to check eligibility")
print("6. Updated storage keys to persist cycle data")
print("7. Updated Firestore sync to include cycle tracking")
print("\nUser flow:")
print("- User gets 5 referrals → claims reward → counter resets to 0")
print("- User can earn 5 more referrals → claim again → cycle continues")
print("- cyclesCompleted tracks how many times they've completed the cycle")
print("- totalReferralsAllTime tracks lifetime referrals")

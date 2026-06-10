import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Checks Firebase for admin-granted overrides and applies them to the app.
/// This allows the admin panel to grant/revoke features, memberships, and credits
/// without the user needing to make a purchase.
class AdminOverrideService extends ChangeNotifier {
  static final AdminOverrideService _instance =
      AdminOverrideService._internal();
  factory AdminOverrideService() => _instance;
  AdminOverrideService._internal();

  static const String _deviceIdKey = 'referral_device_id_v1';

  Map<String, dynamic>? _overrides;
  Map<String, dynamic>? get overrides => _overrides;

  bool _isInitialized = false;

  /// Whether an admin override is currently active
  bool get hasActiveOverride => _overrides != null && _overrides!.isNotEmpty;

  /// The admin-granted tier, if any
  String? get overrideTier => _overrides?['tier'] as String?;

  /// Whether the override has expired
  bool get isExpired {
    if (_overrides == null) return true;
    final expiresAt = _overrides!['expiresAt'];
    if (expiresAt == null) return false; // No expiry = permanent
    if (expiresAt is Timestamp) {
      return DateTime.now().isAfter(expiresAt.toDate());
    }
    return false;
  }

  /// Check if a specific feature is admin-granted
  bool isFeatureGranted(String feature) {
    if (_overrides == null) return false;
    return _overrides![feature] == true;
  }

  /// Initialize — fetch overrides from Firebase and apply them.
  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      final prefs = await SharedPreferences.getInstance();
      final deviceId = prefs.getString(_deviceIdKey) ?? '';
      if (deviceId.isEmpty) {
        _isInitialized = true;
        return;
      }

      final firestore = FirebaseFirestore.instance;
      final doc =
          await firestore.collection('admin_overrides').doc(deviceId).get();

      if (doc.exists) {
        _overrides = doc.data();

        // Check if expired
        if (isExpired) {
          debugPrint('Admin override expired, ignoring');
          _overrides = null;
        } else {
          debugPrint('Admin override active: $_overrides');
          // Apply the override to the subscription service
          await _applyOverrides();
        }
      }
    } catch (e) {
      debugPrint('AdminOverrideService.initialize error: $e');
      // Non-fatal — app works without overrides
    }

    _isInitialized = true;
    notifyListeners();
  }

  /// Apply overrides to the app's local state.
  Future<void> _applyOverrides() async {
    if (_overrides == null) return;

    final prefs = await SharedPreferences.getInstance();

    // Apply tier override
    final tier = _overrides!['tier'] as String?;
    if (tier != null && tier != 'free') {
      await prefs.setString('active_subscription_tier', tier);
      debugPrint('Admin override: tier set to $tier');
    }

    // Apply feature overrides
    if (_overrides!['developerLicense'] == true) {
      await prefs.setBool('developer_license_purchased_v1', true);
      debugPrint('Admin override: developer license granted');
    }

    if (_overrides!['discordAddon'] == true) {
      await prefs.setBool('discord_addon_purchased', true);
      debugPrint('Admin override: Discord addon granted');
    }

    if (_overrides!['packGood'] == true) {
      await prefs.setBool('pack_good', true);
      debugPrint('Admin override: Pack Good granted');
    }
    if (_overrides!['packBad'] == true) {
      await prefs.setBool('pack_bad', true);
      debugPrint('Admin override: Pack Bad granted');
    }
    if (_overrides!['packUgly'] == true) {
      await prefs.setBool('pack_ugly', true);
      debugPrint('Admin override: Pack Ugly granted');
    }
    if (_overrides!['packNarcissist'] == true) {
      await prefs.setBool('pack_narcissist', true);
      debugPrint('Admin override: Pack Narcissist granted');
    }
    if (_overrides!['packSerialKiller'] == true) {
      await prefs.setBool('pack_serial_killer', true);
      debugPrint('Admin override: Pack Serial Killer granted');
    }

    // Referral credits override
    final referralCredits = _overrides!['referralCreditsOverride'] as int?;
    if (referralCredits != null) {
      await prefs.setInt('referral_credit_count_v1', referralCredits);
      debugPrint('Admin override: referral credits set to $referralCredits');
    }
  }

  /// Force refresh overrides from Firebase (call on pull-to-refresh or app resume)
  Future<void> refresh() async {
    _isInitialized = false;
    _overrides = null;
    await initialize();
  }
}

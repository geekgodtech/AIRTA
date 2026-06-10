import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// Manages the Metrics Pack Developer License.
/// A one-time $9.99 purchase that grants the user lifetime access to submit
/// metric packs for sale and earn 50% of each sale as creator credit.
class DeveloperLicenseService extends ChangeNotifier {
  static final DeveloperLicenseService _instance =
      DeveloperLicenseService._internal();
  factory DeveloperLicenseService() => _instance;
  DeveloperLicenseService._internal();

  static const String productId = 'developer_license_29_99';
  static const double price = 29.99;

  static const String _licenseKey = 'developer_license_purchased_v1';
  static const String _licenseEmailKey = 'developer_license_email_v1';
  static const String _licenseDateKey = 'developer_license_date_v1';
  static const String _emailNotificationsKey = 'developer_email_notifications_v1';

  bool _hasLicense = false;
  bool get hasLicense => _hasLicense;

  String _licenseEmail = '';
  String get licenseEmail => _licenseEmail;

  DateTime? _purchaseDate;
  DateTime? get purchaseDate => _purchaseDate;

  bool _emailNotificationsEnabled = false;
  bool get emailNotificationsEnabled => _emailNotificationsEnabled;

  bool _isInitialized = false;

  /// Initialize — load license state from local storage.
  Future<void> initialize() async {
    if (_isInitialized) return;
    final prefs = await SharedPreferences.getInstance();
    _hasLicense = prefs.getBool(_licenseKey) ?? false;
    _licenseEmail = prefs.getString(_licenseEmailKey) ?? '';
    _emailNotificationsEnabled = prefs.getBool(_emailNotificationsKey) ?? false;
    final dateMs = prefs.getInt(_licenseDateKey);
    if (dateMs != null) {
      _purchaseDate = DateTime.fromMillisecondsSinceEpoch(dateMs);
    }

    // In demo mode, grant license automatically
    const isDemoMode = bool.fromEnvironment('DEMO_MODE', defaultValue: false);
    if (isDemoMode) {
      _hasLicense = true;
      _licenseEmail = 'demo@airta.net';
      _purchaseDate = DateTime.now();
      _emailNotificationsEnabled = true;
    }

    _isInitialized = true;
    notifyListeners();
  }

  /// Purchase the developer license.
  /// In production this would go through IAP; for now it records locally
  /// and in Firestore.
  Future<bool> purchaseLicense({required String email}) async {
    try {
      _hasLicense = true;
      _licenseEmail = email;
      _purchaseDate = DateTime.now();

      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_licenseKey, true);
      await prefs.setString(_licenseEmailKey, email);
      await prefs.setInt(_licenseDateKey, _purchaseDate!.millisecondsSinceEpoch);

      // Record in Firestore
      try {
        final firestore = FirebaseFirestore.instance;
        await firestore.collection('developer_licenses').doc(email).set({
          'email': email,
          'purchasedAt': FieldValue.serverTimestamp(),
          'productId': productId,
          'price': price,
        });
      } catch (e) {
        debugPrint('DeveloperLicenseService Firestore error: $e');
        // Non-fatal — local storage is primary
      }

      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('DeveloperLicenseService.purchaseLicense error: $e');
      return false;
    }
  }

  /// Verify if a given email has a developer license (check Firestore).
  Future<bool> verifyLicense(String email) async {
    try {
      final firestore = FirebaseFirestore.instance;
      final doc =
          await firestore.collection('developer_licenses').doc(email).get();
      return doc.exists;
    } catch (e) {
      debugPrint('DeveloperLicenseService.verifyLicense error: $e');
      return _hasLicense; // Fallback to local state
    }
  }

  /// Enable or disable email notifications for pack sales.
  Future<void> setEmailNotificationsEnabled(bool enabled) async {
    _emailNotificationsEnabled = enabled;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_emailNotificationsKey, enabled);

    // Also update in Firestore if user has a license
    if (_hasLicense && _licenseEmail.isNotEmpty) {
      try {
        final firestore = FirebaseFirestore.instance;
        await firestore.collection('developer_licenses').doc(_licenseEmail).update({
          'emailNotificationsEnabled': enabled,
          'updatedAt': FieldValue.serverTimestamp(),
        });
      } catch (e) {
        debugPrint('DeveloperLicenseService.setEmailNotificationsEnabled Firestore error: $e');
        // Non-fatal — local storage is primary
      }
    }

    notifyListeners();
  }
}

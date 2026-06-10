import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:airta/models.dart';

/// Model for a user-submitted metric pack from Firebase.
class UserSubmittedPack {
  final String id;
  final String packName;
  final String creatorName;
  final String creatorEmail;
  final String creatorPhone;
  final String submissionLanguage;
  final String submissionDate;
  final int metricCount;
  final double price;
  final double creatorCreditPerSale;
  final int salesCount;
  final String status; // pending_review, approved, rejected
  final List<SubmittedMetric> metrics;

  UserSubmittedPack({
    required this.id,
    required this.packName,
    required this.creatorName,
    required this.creatorEmail,
    required this.creatorPhone,
    required this.submissionLanguage,
    required this.submissionDate,
    required this.metricCount,
    required this.price,
    required this.creatorCreditPerSale,
    required this.salesCount,
    required this.status,
    required this.metrics,
  });

  factory UserSubmittedPack.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    final metricsList = (data['metrics'] as List<dynamic>? ?? [])
        .map((m) => SubmittedMetric.fromMap(m as Map<String, dynamic>))
        .toList();
    return UserSubmittedPack(
      id: doc.id,
      packName: data['packName'] as String? ?? 'Unnamed Pack',
      creatorName: data['creatorName'] as String? ?? 'Anonymous',
      creatorEmail: data['creatorEmail'] as String? ?? '',
      creatorPhone: data['creatorPhone'] as String? ?? '',
      submissionLanguage: data['submissionLanguage'] as String? ?? 'en',
      submissionDate: data['submissionDate'] as String? ?? '',
      metricCount: data['metricCount'] as int? ?? metricsList.length,
      price: (data['price'] as num?)?.toDouble() ?? 5.00,
      creatorCreditPerSale: (data['creatorCreditPerSale'] as num?)?.toDouble() ?? 2.50,
      salesCount: data['salesCount'] as int? ?? 0,
      status: data['status'] as String? ?? 'pending_review',
      metrics: metricsList,
    );
  }

  String get priceFormatted => '\$${price.toStringAsFixed(2)}';
  String get qtyLabel => '$metricCount Metrics';
}

class SubmittedMetric {
  final String name;
  final String definition;

  SubmittedMetric({required this.name, required this.definition});

  factory SubmittedMetric.fromMap(Map<String, dynamic> map) {
    return SubmittedMetric(
      name: map['name'] as String? ?? '',
      definition: map['definition'] as String? ?? '',
    );
  }
}

/// Service to manage user-submitted metric packs from Firebase Firestore.
/// Handles fetching, purchasing, installing, and creator credit tracking.
class UserSubmittedPacksService extends ChangeNotifier {
  static final UserSubmittedPacksService _instance =
      UserSubmittedPacksService._internal();
  factory UserSubmittedPacksService() => _instance;
  UserSubmittedPacksService._internal();

  static const String _purchasedPacksKey = 'purchased_user_packs_v1';
  static const String _creatorCreditsKey = 'creator_credits_v1';
  static const String _installedPacksKey = 'installed_user_packs_v1';

  List<UserSubmittedPack> _availablePacks = [];
  List<UserSubmittedPack> get availablePacks => List.unmodifiable(_availablePacks);

  Set<String> _purchasedPackIds = {};
  Set<String> get purchasedPackIds => Set.unmodifiable(_purchasedPackIds);

  // Creator credits: email -> accumulated credits
  Map<String, double> _creatorCredits = {};
  Map<String, double> get creatorCredits => Map.unmodifiable(_creatorCredits);

  // Installed packs as PsychologicalMetric lists (ready for analysis)
  Map<String, List<PsychologicalMetric>> _installedPacks = {};
  Map<String, List<PsychologicalMetric>> get installedPacks =>
      Map.unmodifiable(_installedPacks);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  /// Initialize service — load local purchases and fetch from Firebase.
  Future<void> initialize() async {
    await _loadLocalData();
    await fetchPacks();
  }

  /// Load locally stored purchase data.
  Future<void> _loadLocalData() async {
    try {
      final prefs = await SharedPreferences.getInstance();

      // Load purchased pack IDs
      final purchasedRaw = prefs.getStringList(_purchasedPacksKey);
      if (purchasedRaw != null) {
        _purchasedPackIds = purchasedRaw.toSet();
      }

      // Load creator credits
      final creditsRaw = prefs.getString(_creatorCreditsKey);
      if (creditsRaw != null) {
        final map = jsonDecode(creditsRaw) as Map<String, dynamic>;
        _creatorCredits = map.map((k, v) => MapEntry(k, (v as num).toDouble()));
      }

      // Load installed packs
      final installedRaw = prefs.getString(_installedPacksKey);
      if (installedRaw != null) {
        final map = jsonDecode(installedRaw) as Map<String, dynamic>;
        _installedPacks = map.map((k, v) {
          final metrics = (v as List<dynamic>)
              .map((m) => PsychologicalMetric.fromJson(m as Map<String, dynamic>))
              .toList();
          return MapEntry(k, metrics);
        });
      }
    } catch (e) {
      debugPrint('UserSubmittedPacksService._loadLocalData error: $e');
    }
  }

  /// Save local data.
  Future<void> _saveLocalData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(_purchasedPacksKey, _purchasedPackIds.toList());
      await prefs.setString(_creatorCreditsKey, jsonEncode(_creatorCredits));

      // Save installed packs
      final installedMap = _installedPacks.map((k, v) =>
          MapEntry(k, v.map((m) => m.toJson()).toList()));
      await prefs.setString(_installedPacksKey, jsonEncode(installedMap));
    } catch (e) {
      debugPrint('UserSubmittedPacksService._saveLocalData error: $e');
    }
  }

  /// Fetch approved packs from Firebase Firestore.
  Future<void> fetchPacks() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final firestore = FirebaseFirestore.instance;
      final snapshot = await firestore
          .collection('user_submitted_packs')
          .where('status', isEqualTo: 'approved')
          .orderBy('createdAt', descending: true)
          .get();

      _availablePacks = snapshot.docs
          .map((doc) => UserSubmittedPack.fromFirestore(doc))
          .toList();

      _isLoading = false;
      notifyListeners();
    } catch (e) {
      debugPrint('UserSubmittedPacksService.fetchPacks error: $e');
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Get packs filtered by language.
  List<UserSubmittedPack> getPacksByLanguage(String langCode) {
    return _availablePacks
        .where((p) => p.submissionLanguage == langCode)
        .toList();
  }

  /// Check if a pack has been purchased.
  bool isPurchased(String packId) => _purchasedPackIds.contains(packId);

  /// Purchase a pack — records the sale in Firestore, credits the creator,
  /// and installs the metrics locally for the purchasing user.
  Future<bool> purchasePack(UserSubmittedPack pack) async {
    try {
      final firestore = FirebaseFirestore.instance;

      // Increment sales count in Firestore
      await firestore
          .collection('user_submitted_packs')
          .doc(pack.id)
          .update({'salesCount': FieldValue.increment(1)});

      // Record credit for the creator
      await firestore.collection('creator_credits').doc(pack.creatorEmail).set({
        'email': pack.creatorEmail,
        'phone': pack.creatorPhone,
        'name': pack.creatorName,
        'totalCredits': FieldValue.increment(pack.creatorCreditPerSale),
        'lastSaleAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));

      // Record this sale transaction
      await firestore.collection('sales_transactions').add({
        'packId': pack.id,
        'packName': pack.packName,
        'creatorEmail': pack.creatorEmail,
        'creatorName': pack.creatorName,
        'amount': pack.price,
        'creatorCredit': pack.creatorCreditPerSale,
        'purchasedAt': FieldValue.serverTimestamp(),
      });

      // Mark as purchased locally
      _purchasedPackIds.add(pack.id);

      // Install the metrics for the user
      _installPackMetrics(pack);

      await _saveLocalData();
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('UserSubmittedPacksService.purchasePack error: $e');
      _error = e.toString();
      notifyListeners();
      return false;
    }
  }

  /// Convert submitted metrics into PsychologicalMetric objects and install.
  void _installPackMetrics(UserSubmittedPack pack) {
    final metrics = <PsychologicalMetric>[];
    for (int i = 0; i < pack.metrics.length; i++) {
      final m = pack.metrics[i];
      metrics.add(PsychologicalMetric(
        id: 'user_pack_${pack.id}_${i + 1}',
        name: m.name,
        description: m.definition,
        severityWeight: 3, // Default severity for user-submitted
      ));
    }
    _installedPacks[pack.id] = metrics;
  }

  /// Get all installed metrics from purchased user packs (flat list).
  List<PsychologicalMetric> get allInstalledMetrics {
    return _installedPacks.values.expand((list) => list).toList();
  }

  /// Get installed metrics for a specific pack.
  List<PsychologicalMetric> getInstalledMetricsForPack(String packId) {
    return _installedPacks[packId] ?? [];
  }

  /// Get the current user's creator credit balance (if they've submitted packs).
  Future<double> getCreatorBalance(String email) async {
    try {
      final firestore = FirebaseFirestore.instance;
      final doc = await firestore.collection('creator_credits').doc(email).get();
      if (doc.exists) {
        return (doc.data()?['totalCredits'] as num?)?.toDouble() ?? 0.0;
      }
      return 0.0;
    } catch (e) {
      debugPrint('UserSubmittedPacksService.getCreatorBalance error: $e');
      return 0.0;
    }
  }

  /// Request a cashout for the creator. Creates a cashout request document.
  Future<bool> requestCashout({
    required String email,
    required String name,
    required double amount,
    required String cashoutType, // 'free_month', 'pack_credit', 'paypal'
    String? paypalEmail,
  }) async {
    try {
      final firestore = FirebaseFirestore.instance;

      // Verify sufficient balance
      final balance = await getCreatorBalance(email);
      if (balance < amount) return false;

      // Determine minimum cashout threshold
      final minCashout = cashoutType == 'free_month' ? 9.99 : 19.99;
      if (balance < minCashout) return false;

      // Create cashout request
      await firestore.collection('cashout_requests').add({
        'email': email,
        'name': name,
        'amount': amount,
        'cashoutType': cashoutType,
        'paypalEmail': paypalEmail,
        'status': 'pending',
        'requestedAt': FieldValue.serverTimestamp(),
      });

      // Deduct from credits
      await firestore.collection('creator_credits').doc(email).update({
        'totalCredits': FieldValue.increment(-amount),
      });

      return true;
    } catch (e) {
      debugPrint('UserSubmittedPacksService.requestCashout error: $e');
      return false;
    }
  }
}

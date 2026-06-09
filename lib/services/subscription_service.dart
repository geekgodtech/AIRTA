import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Service for managing in-app subscriptions
/// Handles Google Play Store and Apple App Store subscriptions
class SubscriptionService extends ChangeNotifier {
  static final SubscriptionService _instance = SubscriptionService._internal();
  factory SubscriptionService() => _instance;
  SubscriptionService._internal();

  final InAppPurchase _iap = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;

  // Product IDs - must match what you create in Play Console and App Store Connect
  static const String standardMonthlyId = 'standard_monthly';
  static const String proMonthlyId = 'pro_monthly';
  static const String proPlusMonthlyId = 'pro_plus_monthly';
  static const String oneTimeUnlockId = 'one_time_unlock';
  static const String discordAddonMonthlyId = 'discord_addon_monthly';
  static const String customMetricOneTimeId = 'custom_metric_4_99';
  static const String packGoodOneTimeId = 'metrics_pack_good_9_99';
  static const String packBadOneTimeId = 'metrics_pack_bad_9_99';
  static const String packUglyOneTimeId = 'metrics_pack_ugly_9_99';
  static const String packNarcissistOneTimeId = 'metrics_pack_narcissist_4_99';
  static const String packSerialKillerOneTimeId = 'metrics_pack_serial_killer_4_99';

  // Available products
  List<ProductDetails> _products = [];
  List<ProductDetails> get products => _products;

  // Active subscriptions
  MembershipTier _activeTier = MembershipTier.free;
  MembershipTier get activeTier => _activeTier;

  // Add-ons
  bool _hasDiscordAddon = false;
  bool get hasDiscordAddon => _hasDiscordAddon;

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  // Custom metric purchase flag - set true when store confirms payment
  bool _pendingCustomMetricPurchase = false;
  bool get pendingCustomMetricPurchase => _pendingCustomMetricPurchase;

  // Metric expansion pack purchase flags
  bool _pendingPackGoodPurchase = false;
  bool get pendingPackGoodPurchase => _pendingPackGoodPurchase;
  bool _pendingPackBadPurchase = false;
  bool get pendingPackBadPurchase => _pendingPackBadPurchase;
  bool _pendingPackUglyPurchase = false;
  bool get pendingPackUglyPurchase => _pendingPackUglyPurchase;
  bool _pendingPackNarcissistPurchase = false;
  bool get pendingPackNarcissistPurchase => _pendingPackNarcissistPurchase;
  bool _pendingPackSerialKillerPurchase = false;
  bool get pendingPackSerialKillerPurchase => _pendingPackSerialKillerPurchase;

  void clearPendingPackGoodPurchase() { _pendingPackGoodPurchase = false; notifyListeners(); }
  void clearPendingPackBadPurchase() { _pendingPackBadPurchase = false; notifyListeners(); }
  void clearPendingPackUglyPurchase() { _pendingPackUglyPurchase = false; notifyListeners(); }
  void clearPendingPackNarcissistPurchase() { _pendingPackNarcissistPurchase = false; notifyListeners(); }
  void clearPendingPackSerialKillerPurchase() { _pendingPackSerialKillerPurchase = false; notifyListeners(); }

  /// Clear the pending custom metric flag once the UI has handled it.
  void clearPendingCustomMetricPurchase() {
    _pendingCustomMetricPurchase = false;
    notifyListeners();
  }

  /// Initialize the subscription service
  Future<void> initialize() async {
    if (_isInitialized) return;

    // Skip IAP entirely in demo mode builds
    const isDemoMode = bool.fromEnvironment('DEMO_MODE', defaultValue: false);
    if (isDemoMode) {
      _activeTier = MembershipTier.standard;
      _hasDiscordAddon = true; // Enable Discord add-on in demo mode
      _isInitialized = true;
      notifyListeners();
      return;
    }

    try {
      final available = await _iap.isAvailable();
      if (!available) {
        debugPrint('In-app purchases not available on this device');
        _isInitialized = true;
        return;
      }

      // Listen to purchase updates
      _subscription = _iap.purchaseStream.listen(
        _onPurchaseUpdate,
        onDone: () => _subscription?.cancel(),
        onError: (error) => debugPrint('Purchase stream error: $error'),
      );

      // Load products
      await _loadProducts();

      // Restore previous purchases
      await restorePurchases();
    } catch (e) {
      debugPrint('IAP initialization error (non-fatal): $e');
    }

    _isInitialized = true;
    notifyListeners();
  }

  /// Load available products from the store
  Future<void> _loadProducts() async {
    const productIds = {
      standardMonthlyId,
      proMonthlyId,
      proPlusMonthlyId,
      oneTimeUnlockId,
      discordAddonMonthlyId,
      customMetricOneTimeId,
    };

    try {
      final response = await _iap.queryProductDetails(productIds);

      if (response.error != null) {
        debugPrint('Error loading products: ${response.error}');
        return;
      }

      _products = response.productDetails;
      debugPrint('Loaded ${_products.length} products');

      for (final product in _products) {
        debugPrint(
            'Product: ${product.id} - ${product.title} - ${product.price}');
      }

      notifyListeners();
    } catch (e) {
      debugPrint('Exception loading products: $e');
    }
  }

  /// Handle purchase updates from the store
  void _onPurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) {
    for (final purchase in purchaseDetailsList) {
      debugPrint('Purchase update: ${purchase.productID} - ${purchase.status}');

      if (purchase.status == PurchaseStatus.purchased ||
          purchase.status == PurchaseStatus.restored) {
        // Verify and activate the purchase
        _verifyAndActivatePurchase(purchase);
      }

      if (purchase.status == PurchaseStatus.error) {
        debugPrint('Purchase error: ${purchase.error}');
      }

      // Complete the purchase
      if (purchase.pendingCompletePurchase) {
        _iap.completePurchase(purchase);
      }
    }
  }

  /// Verify and activate a purchase
  Future<void> _verifyAndActivatePurchase(PurchaseDetails purchase) async {
    // In production, verify the purchase with your backend server
    // For now, we'll trust the store's verification

    final productId = purchase.productID;
    MembershipTier tier = MembershipTier.free;

    switch (productId) {
      case standardMonthlyId:
        tier = MembershipTier.standard;
        break;
      case proMonthlyId:
        tier = MembershipTier.pro;
        break;
      case proPlusMonthlyId:
        tier = MembershipTier.proPlus;
        break;
      case oneTimeUnlockId:
        tier = MembershipTier.oneTimeUnlock;
        break;
      case discordAddonMonthlyId:
        await _activateDiscordAddon();
        debugPrint('Activated Discord add-on');
        return;
      case customMetricOneTimeId:
        // Signal that a custom metric purchase is ready; the UI handles the metric creation flow
        _pendingCustomMetricPurchase = true;
        notifyListeners();
        debugPrint('Custom metric purchase confirmed');
        return;
    }

    await _activateTier(tier);
    debugPrint('Activated tier: $tier');
  }

  /// Activate a membership tier
  Future<void> _activateTier(MembershipTier tier) async {
    _activeTier = tier;

    // Save to local storage
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('membership_tier', tier.name);

    notifyListeners();
  }

  /// Activate Discord add-on
  Future<void> _activateDiscordAddon() async {
    _hasDiscordAddon = true;

    // Save to local storage
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('discord_addon', true);

    notifyListeners();
  }

  /// Purchase a subscription
  Future<bool> purchaseSubscription(String productId) async {
    final product = _products.firstWhere(
      (p) => p.id == productId,
      orElse: () => throw Exception('Product not found: $productId'),
    );

    final purchaseParam = PurchaseParam(productDetails: product);

    try {
      final success = await _iap.buyNonConsumable(purchaseParam: purchaseParam);
      return success;
    } catch (e) {
      debugPrint('Purchase error: $e');
      return false;
    }
  }

  /// Purchase a custom metric slot ($4.99 one-time consumable).
  Future<bool> purchaseCustomMetric() async {
    // In demo mode, simulate a successful purchase immediately
    const isDemoMode = bool.fromEnvironment('DEMO_MODE', defaultValue: false);
    if (isDemoMode) {
      _pendingCustomMetricPurchase = true;
      notifyListeners();
      return true;
    }
    try {
      final product = _products.firstWhere(
        (p) => p.id == customMetricOneTimeId,
        orElse: () => throw Exception('custom_metric_4_99 not found in store'),
      );
      final purchaseParam = PurchaseParam(productDetails: product);
      // Use buyConsumable so users can buy multiple custom metrics
      final success = await _iap.buyConsumable(purchaseParam: purchaseParam);
      return success;
    } catch (e) {
      debugPrint('purchaseCustomMetric error: $e');
      return false;
    }
  }

  /// Purchase a metrics expansion pack (consumable one-time purchase).
  Future<bool> purchasePack(String packProductId) async {
    const isDemoMode = bool.fromEnvironment('DEMO_MODE', defaultValue: false);
    if (isDemoMode) {
      switch (packProductId) {
        case packGoodOneTimeId: _pendingPackGoodPurchase = true; break;
        case packBadOneTimeId:  _pendingPackBadPurchase = true;  break;
        case packUglyOneTimeId: _pendingPackUglyPurchase = true; break;
        case packNarcissistOneTimeId: _pendingPackNarcissistPurchase = true; break;
        case packSerialKillerOneTimeId: _pendingPackSerialKillerPurchase = true; break;
      }
      notifyListeners();
      return true;
    }
    try {
      final product = _products.firstWhere(
        (p) => p.id == packProductId,
        orElse: () => throw Exception('$packProductId not found in store'),
      );
      final success = await _iap.buyNonConsumable(purchaseParam: PurchaseParam(productDetails: product));
      return success;
    } catch (e) {
      debugPrint('purchasePack error: $e');
      return false;
    }
  }

  Future<void> _savePackPurchase(String packKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(packKey, true);
  }

  /// Check if a pack was previously purchased (survives app restarts).
  Future<bool> isPackPurchased(String packKey) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(packKey) ?? false;
  }

  /// Restore previous purchases
  Future<void> restorePurchases() async {
    try {
      await _iap.restorePurchases();

      // Load saved tier from local storage
      final prefs = await SharedPreferences.getInstance();
      final savedTier = prefs.getString('membership_tier');

    // Restore pack purchases
    if (prefs.getBool('pack_good') == true) { _pendingPackGoodPurchase = true; }
    if (prefs.getBool('pack_bad') == true)  { _pendingPackBadPurchase  = true; }
    if (prefs.getBool('pack_ugly') == true) { _pendingPackUglyPurchase = true; }
    if (prefs.getBool('pack_narcissist') == true) { _pendingPackNarcissistPurchase = true; }
    if (prefs.getBool('pack_serial_killer') == true) { _pendingPackSerialKillerPurchase = true; }

      if (savedTier != null) {
        _activeTier = MembershipTier.values.firstWhere(
          (t) => t.name == savedTier,
          orElse: () => MembershipTier.free,
        );
      }

      // Load saved Discord add-on status
      final hasDiscord = prefs.getBool('discord_addon') ?? false;
      _hasDiscordAddon = hasDiscord;

      notifyListeners();
    } catch (e) {
      debugPrint('Restore purchases error: $e');
    }
  }

  /// Check if user has a specific tier or higher
  bool hasTier(MembershipTier tier) {
    return _activeTier.index >= tier.index;
  }

  /// Get product by ID
  ProductDetails? getProduct(String productId) {
    try {
      return _products.firstWhere((p) => p.id == productId);
    } catch (e) {
      return null;
    }
  }

  // ── Purchase Source Attribution ──────────────────────────────────────────

  static const String _sourcesKey = 'purchase_sources';

  /// Record where a purchase was initiated.
  /// [productId] — the IAP product ID
  /// [source] — 'dashboard' or 'landing_page'
  Future<void> recordPurchaseSource(String productId, String source) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_sourcesKey) ?? '{}';
      final Map<String, dynamic> map = Map<String, dynamic>.from(
        jsonDecode(raw) as Map,
      );
      // Each entry: { source, timestamp }
      map[productId] = {
        'source': source,
        'timestamp': DateTime.now().toIso8601String(),
      };
      await prefs.setString(_sourcesKey, jsonEncode(map));
      debugPrint('Purchase source recorded: $productId -> $source');
    } catch (e) {
      debugPrint('recordPurchaseSource error: $e');
    }
  }

  /// Returns a map of { productId: { source, timestamp } } for all purchases.
  Future<Map<String, Map<String, String>>> getPurchaseSources() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_sourcesKey) ?? '{}';
      final decoded = jsonDecode(raw) as Map<String, dynamic>;
      return decoded.map(
        (k, v) => MapEntry(k, Map<String, String>.from(v as Map)),
      );
    } catch (e) {
      debugPrint('getPurchaseSources error: $e');
      return {};
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

/// Membership tiers
enum MembershipTier {
  free,
  oneTimeUnlock,
  standard,
  pro,
  proPlus,
}

extension MembershipTierExtension on MembershipTier {
  String get displayName {
    switch (this) {
      case MembershipTier.free:
        return 'Free';
      case MembershipTier.oneTimeUnlock:
        return 'One-Time Unlock';
      case MembershipTier.standard:
        return 'Standard';
      case MembershipTier.pro:
        return 'Pro';
      case MembershipTier.proPlus:
        return 'Pro Plus';
    }
  }

  String get productId {
    switch (this) {
      case MembershipTier.free:
        return '';
      case MembershipTier.oneTimeUnlock:
        return SubscriptionService.oneTimeUnlockId;
      case MembershipTier.standard:
        return SubscriptionService.standardMonthlyId;
      case MembershipTier.pro:
        return SubscriptionService.proMonthlyId;
      case MembershipTier.proPlus:
        return SubscriptionService.proPlusMonthlyId;
    }
  }
}

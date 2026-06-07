import 'dart:async';
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

  // Available products
  List<ProductDetails> _products = [];
  List<ProductDetails> get products => _products;

  // Active subscriptions
  MembershipTier _activeTier = MembershipTier.free;
  MembershipTier get activeTier => _activeTier;

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  /// Initialize the subscription service
  Future<void> initialize() async {
    if (_isInitialized) return;

    final available = await _iap.isAvailable();
    if (!available) {
      debugPrint('In-app purchases not available on this device');
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

  /// Restore previous purchases
  Future<void> restorePurchases() async {
    try {
      await _iap.restorePurchases();

      // Load saved tier from local storage
      final prefs = await SharedPreferences.getInstance();
      final savedTier = prefs.getString('membership_tier');

      if (savedTier != null) {
        _activeTier = MembershipTier.values.firstWhere(
          (t) => t.name == savedTier,
          orElse: () => MembershipTier.free,
        );
        notifyListeners();
      }
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

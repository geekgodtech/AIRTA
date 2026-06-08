import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigService {
  static final RemoteConfigService _instance = RemoteConfigService._internal();
  factory RemoteConfigService() => _instance;
  RemoteConfigService._internal();

  final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;
  bool _initialized = false;

  Future<void> initialize() async {
    if (_initialized) return;

    try {
      await _remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(hours: 1),
      ));

      await _remoteConfig.setDefaults({
        'min_required_version': '1.0.0',
        'force_update': false,
        'update_message': 'A new version is available with exciting features!',
        'android_store_url':
            'https://play.google.com/store/apps/details?id=com.airta.airelationshiptoxicityanalyzer',
        'ios_store_url': 'https://apps.apple.com/app/airta/id1234567890',
        'standard_tier_price': '9.99',
        'discord_addon_price': '9.99',
        'discord_addon_enabled': false,
        'discord_bot_token': '',
        'discord_client_id': '',
        'discord_client_secret': '',
        'one_time_unlock_price': '19.99',
        'standard_tier_features':
            'Unlimited SMS analysis,Advanced AI insights,PDF report export,Priority support',
        'discord_addon_features':
            'Discord server channel analysis,Import up to 10000 messages per channel,Full AI toxicity analysis,PDF reports for Discord conversations',
        'pro_tier_features':
            'Everything in Standard,WhatsApp analysis,Facebook Messenger analysis,Instagram DM analysis,Email analysis',
        'pro_plus_tier_features':
            'Everything in Pro,Discord server analysis,Custom integrations,API access,White-label reports',
        'supported_platforms': 'sms,whatsapp,messenger,instagram,email,linkedin,telegram,twitter,discord',
      });

      await _remoteConfig.fetchAndActivate();
    } catch (e) {
      print('Remote config initialization error (non-fatal): $e');
    }

    _initialized = true;
  }

  String get minRequiredVersion =>
      _remoteConfig.getString('min_required_version');
  bool get forceUpdate => _remoteConfig.getBool('force_update');
  String get updateMessage => _remoteConfig.getString('update_message');
  String get androidStoreUrl => _remoteConfig.getString('android_store_url');
  String get iosStoreUrl => _remoteConfig.getString('ios_store_url');

  String get standardTierPrice =>
      _remoteConfig.getString('standard_tier_price');
  String get discordAddonPrice =>
      _remoteConfig.getString('discord_addon_price');
  String get oneTimeUnlockPrice =>
      _remoteConfig.getString('one_time_unlock_price');

  bool get discordAddonEnabled =>
      _remoteConfig.getBool('discord_addon_enabled');

  String get discordBotToken =>
      _remoteConfig.getString('discord_bot_token');
  String get discordClientId =>
      _remoteConfig.getString('discord_client_id');
  String get discordClientSecret =>
      _remoteConfig.getString('discord_client_secret');

  // Pro and Pro Plus tiers - COMMENTED OUT FOR FUTURE IMPLEMENTATION
  // String get proTierPrice => _remoteConfig.getString('pro_tier_price');
  // String get proPlusTierPrice => _remoteConfig.getString('pro_plus_tier_price');
  // bool get proTierEnabled => _remoteConfig.getBool('pro_tier_enabled');
  // bool get proPlusTierEnabled => _remoteConfig.getBool('pro_plus_tier_enabled');

  List<String> get standardTierFeatures {
    final value = _remoteConfig.getValue('standard_tier_features');
    if (value.asString().isEmpty) return [];
    return value.asString().split(',').map((e) => e.trim()).toList();
  }

  List<String> get discordAddonFeatures {
    final value = _remoteConfig.getValue('discord_addon_features');
    if (value.asString().isEmpty) return [];
    return value.asString().split(',').map((e) => e.trim()).toList();
  }

  // Pro and Pro Plus tier features - COMMENTED OUT FOR FUTURE IMPLEMENTATION
  // List<String> get proTierFeatures {
  //   final value = _remoteConfig.getValue('pro_tier_features');
  //   if (value.asString().isEmpty) return [];
  //   return value.asString().split(',').map((e) => e.trim()).toList();
  // }
  //
  // List<String> get proPlusTierFeatures {
  //   final value = _remoteConfig.getValue('pro_plus_tier_features');
  //   if (value.asString().isEmpty) return [];
  //   return value.asString().split(',').map((e) => e.trim()).toList();
  // }

  List<String> get supportedPlatforms {
    final value = _remoteConfig.getValue('supported_platforms');
    if (value.asString().isEmpty) return ['sms'];
    return value.asString().split(',').map((e) => e.trim()).toList();
  }

  bool isPlatformSupported(String platform) {
    return supportedPlatforms.contains(platform.toLowerCase());
  }
}

import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigService {
  static final RemoteConfigService _instance = RemoteConfigService._internal();
  factory RemoteConfigService() => _instance;
  RemoteConfigService._internal();

  FirebaseRemoteConfig? _remoteConfig;
  bool _initialized = false;

  FirebaseRemoteConfig get _config {
    if (_remoteConfig != null) return _remoteConfig!;
    try {
      _remoteConfig = FirebaseRemoteConfig.instance;
      return _remoteConfig!;
    } catch (e) {
      // Firebase not initialized (e.g., in screenshot mode)
      throw e;
    }
  }

  Future<void> initialize() async {
    if (_initialized) return;

    try {
      await _config.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(hours: 1),
      ));

      await _config.setDefaults({
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

      await _config.fetchAndActivate();
    } catch (e) {
      print('Remote config initialization error (non-fatal): $e');
    }

    _initialized = true;
  }

  String get minRequiredVersion {
    try {
      return _config.getString('min_required_version');
    } catch (e) {
      return '1.0.0';
    }
  }

  bool get forceUpdate {
    try {
      return _config.getBool('force_update');
    } catch (e) {
      return false;
    }
  }

  String get updateMessage {
    try {
      return _config.getString('update_message');
    } catch (e) {
      return 'A new version is available with exciting features!';
    }
  }

  String get androidStoreUrl {
    try {
      return _config.getString('android_store_url');
    } catch (e) {
      return 'https://play.google.com/store/apps/details?id=com.airta.airelationshiptoxicityanalyzer';
    }
  }

  String get iosStoreUrl {
    try {
      return _config.getString('ios_store_url');
    } catch (e) {
      return 'https://apps.apple.com/app/airta/id1234567890';
    }
  }

  String get standardTierPrice {
    try {
      return _config.getString('standard_tier_price');
    } catch (e) {
      return '9.99';
    }
  }

  String get discordAddonPrice {
    try {
      return _config.getString('discord_addon_price');
    } catch (e) {
      return '9.99';
    }
  }

  String get oneTimeUnlockPrice {
    try {
      return _config.getString('one_time_unlock_price');
    } catch (e) {
      return '19.99';
    }
  }

  bool get discordAddonEnabled {
    try {
      return _config.getBool('discord_addon_enabled');
    } catch (e) {
      return false;
    }
  }

  String get discordBotToken {
    try {
      return _config.getString('discord_bot_token');
    } catch (e) {
      return '';
    }
  }

  String get discordClientId {
    try {
      return _config.getString('discord_client_id');
    } catch (e) {
      return '';
    }
  }

  String get discordClientSecret {
    try {
      return _config.getString('discord_client_secret');
    } catch (e) {
      return '';
    }
  }

  // Pro and Pro Plus tiers - COMMENTED OUT FOR FUTURE IMPLEMENTATION
  // String get proTierPrice => _config.getString('pro_tier_price');
  // String get proPlusTierPrice => _config.getString('pro_plus_tier_price');
  // bool get proTierEnabled => _config.getBool('pro_tier_enabled');
  // bool get proPlusTierEnabled => _config.getBool('pro_plus_tier_enabled');

  List<String> get standardTierFeatures {
    try {
      final value = _config.getValue('standard_tier_features');
      if (value.asString().isEmpty) return [];
      return value.asString().split(',').map((e) => e.trim()).toList();
    } catch (e) {
      return ['Unlimited SMS analysis', 'Advanced AI insights', 'PDF report export', 'Priority support'];
    }
  }

  List<String> get discordAddonFeatures {
    try {
      final value = _config.getValue('discord_addon_features');
      if (value.asString().isEmpty) return [];
      return value.asString().split(',').map((e) => e.trim()).toList();
    } catch (e) {
      return [];
    }
  }

  // Pro and Pro Plus tier features - COMMENTED OUT FOR FUTURE IMPLEMENTATION
  // List<String> get proTierFeatures {
  //   final value = _config.getValue('pro_tier_features');
  //   if (value.asString().isEmpty) return [];
  //   return value.asString().split(',').map((e) => e.trim()).toList();
  // }
  //
  // List<String> get proPlusTierFeatures {
  //   final value = _config.getValue('pro_plus_tier_features');
  //   if (value.asString().isEmpty) return [];
  //   return value.asString().split(',').map((e) => e.trim()).toList();
  // }

  List<String> get supportedPlatforms {
    try {
      final value = _config.getValue('supported_platforms');
      if (value.asString().isEmpty) return ['sms'];
      return value.asString().split(',').map((e) => e.trim()).toList();
    } catch (e) {
      return ['sms'];
    }
  }

  bool isPlatformSupported(String platform) {
    return supportedPlatforms.contains(platform.toLowerCase());
  }
}

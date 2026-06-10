import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:window_manager/window_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:airta/controllers/toxicity_analyzer_controller.dart';
import 'package:airta/widgets/toxicity_analyzer_master_view.dart';
import 'package:airta/services/subscription_service.dart';
import 'package:airta/services/remote_config_service.dart';
import 'package:airta/services/version_check_service.dart';
import 'package:airta/services/language_service.dart';
import 'package:airta/services/theme_service.dart';
import 'package:airta/services/user_submitted_packs_service.dart';
import 'package:airta/services/referral_service.dart';
import 'package:airta/services/developer_license_service.dart';
import 'package:airta/services/admin_override_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:airta/l10n/app_localizations.dart';
import 'package:airta/screens/force_update_screen.dart';
import 'package:airta/screens/disclaimer_screen.dart';
import 'package:airta/services/screenshot_automation.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize window_manager for desktop window resizing
  if (!kIsWeb && (Platform.isWindows || Platform.isMacOS || Platform.isLinux)) {
    await windowManager.ensureInitialized();
  }

  // Initialize Firebase (optional - won't hang if not configured)
  try {
    await Firebase.initializeApp();
    await RemoteConfigService().initialize();
  } catch (e) {
    print('Firebase not configured yet: $e');
    // App will use default values
  }

  // Initialize subscription service
  await SubscriptionService().initialize();

  // Initialize language service
  await LanguageService().initialize();

  // Initialize theme service
  await ThemeService().initialize();

  // Initialize user submitted packs service
  await UserSubmittedPacksService().initialize();

  // Initialize referral service
  await ReferralService().initialize();

  // Initialize developer license service
  await DeveloperLicenseService().initialize();

  // Check for admin-granted overrides from Firebase
  await AdminOverrideService().initialize();

  // Register this device in Firestore users collection
  _registerUser();

  runApp(const ToxicityAnalyzerApp());
}

/// Register this device in Firestore so the admin panel can see and manage it.
void _registerUser() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    final deviceId = prefs.getString('referral_device_id_v1') ?? '';
    if (deviceId.isEmpty) return;

    final tier = prefs.getString('active_subscription_tier') ?? 'free';
    final email = prefs.getString('developer_license_email_v1') ?? '';

    final firestore = FirebaseFirestore.instance;
    await firestore.collection('users').doc(deviceId).set({
      'deviceId': deviceId,
      'email': email,
      'tier': tier,
      'lastSeen': FieldValue.serverTimestamp(),
      'appVersion': '1.0.0',
    }, SetOptions(merge: true));
  } catch (e) {
    // Non-fatal - app works without registration
  }
}

class ToxicityAnalyzerApp extends StatefulWidget {
  const ToxicityAnalyzerApp({super.key});

  @override
  State<ToxicityAnalyzerApp> createState() => _ToxicityAnalyzerAppState();
}

class _ToxicityAnalyzerAppState extends State<ToxicityAnalyzerApp> {
  bool _permissionsGranted = false;
  bool _showPermissionDialog = true;
  bool _updateRequired = false;
  bool _checkingVersion = true;
  bool _disclaimerAccepted = false;

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    // Skip disclaimer and permissions on web, desktop (Windows/Mac/Linux), or when
    // running the automated screenshot capture build (--dart-define=SCREENSHOT_MODE=true).
    final isDesktop = Platform.isWindows || Platform.isMacOS || Platform.isLinux;
    if (kIsWeb || isDesktop || kScreenshotMode) {
      setState(() {
        _disclaimerAccepted = true;
        _permissionsGranted = true;
        _showPermissionDialog = false;
        _checkingVersion = false;
      });

      if (kScreenshotMode) {
        // Give the UI a moment to render the first frame, then start the
        // automated capture sequence across all languages and sizes.
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Future<void>.delayed(const Duration(seconds: 2), () {
            ScreenshotAutomation.instance.run();
          });
        });
      }
      return;
    }

    // Check disclaimer acceptance first
    final prefs = await SharedPreferences.getInstance();
    final disclaimerAccepted = prefs.getBool('disclaimer_accepted') ?? false;
    if (!disclaimerAccepted) {
      setState(() {
        _disclaimerAccepted = false;
        _checkingVersion = false;
      });
      return;
    }
    setState(() => _disclaimerAccepted = true);

    try {
      // Check if update is required with timeout
      final versionService = VersionCheckService();
      final updateRequired = await versionService
          .isUpdateRequired()
          .timeout(const Duration(seconds: 5), onTimeout: () {
        print('Version check timed out, continuing...');
        return false;
      });

      if (updateRequired) {
        setState(() {
          _updateRequired = true;
          _checkingVersion = false;
        });
        return;
      }
    } catch (e) {
      print('Version check error: $e');
    }

    // If no update required, check permissions
    setState(() {
      _checkingVersion = false;
    });
    await _checkPermissions();

    // Check for referral reward after everything is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkReferralReward();
    });
  }

  void _onDisclaimerAccepted() {
    setState(() => _disclaimerAccepted = true);
    _initializeApp();
  }

  Future<void> _checkPermissions() async {
    final smsGranted = await Permission.sms.isGranted;
    final contactsGranted = await Permission.contacts.isGranted;

    if (smsGranted && contactsGranted) {
      setState(() {
        _permissionsGranted = true;
        _showPermissionDialog = false;
      });
    }
  }

  Future<void> _requestPermissions() async {
    await Permission.sms.request();
    await Permission.contacts.request();

    setState(() {
      _showPermissionDialog = false;
      _permissionsGranted = true;
    });

    // After permissions granted, check for referral reward
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkReferralReward();
    });
  }

  /// Check if user has earned referral reward and show dialog if so
  void _checkReferralReward() async {
    final referralService = ReferralService();

    // Wait for service to be initialized
    if (!referralService.isInitialized) {
      await referralService.initialize();
    }

    // Check if user has earned reward but not claimed yet
    if (referralService.hasEarnedReward && !referralService.trialActivated) {
      // Show dialog after a short delay so UI is ready
      Future.delayed(const Duration(milliseconds: 500), () {
        if (mounted) {
          _showReferralRewardDialog(referralService);
        }
      });
    }
  }

  /// Show the referral reward dialog
  void _showReferralRewardDialog(ReferralService referralService) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1a1a3e),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Color(0xFF40cc40), width: 2),
        ),
        title: const Row(
          children: [
            Icon(Icons.card_giftcard, color: Color(0xFF60ff60)),
            SizedBox(width: 10),
            Text(
              'Congratulations!',
              style: TextStyle(
                color: Color(0xFF60ff60),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You\'ve successfully referred 5 friends who ran their first report!',
              style: const TextStyle(color: Color(0xFFe8e8f0), fontSize: 14),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF1a3a1a),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFF40cc40)),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Reward:',
                    style: TextStyle(
                      color: Color(0xFF60ff60),
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '31 Days of Standard Membership FREE',
                    style: TextStyle(
                      color: Color(0xFFa0ffa0),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Would you like to activate your free month now?',
              style: TextStyle(color: Color(0xFFa0a0c0), fontSize: 13),
            ),
            const SizedBox(height: 8),
            const Text(
              'Your membership will automatically revert after 31 days.',
              style: TextStyle(color: Color(0xFF8888aa), fontSize: 11),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Not Now',
              style: TextStyle(color: Color(0xFF8888aa)),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.of(context).pop();

              // Activate the reward
              await referralService.activateRewardTrial();

              // Reset for next cycle
              await referralService.resetForNextCycle();

              // Show success message
              if (mounted) {
                final cycles = referralService.cyclesCompleted;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      cycles == 1
                          ? 'Free Standard month activated! You can now earn 5 more referrals for another reward.'
                          : 'Free Standard month activated! Cycle $cycles complete. Earn 5 more for another reward!',
                    ),
                    backgroundColor: const Color(0xFF2a5a2a),
                    duration: const Duration(seconds: 5),
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF40cc40),
              foregroundColor: Colors.white,
            ),
            child: const Text('Activate Free Month'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: LanguageService(),
      child: Consumer<LanguageService>(
        builder: (context, languageService, child) {
          return ChangeNotifierProvider.value(
            value: ThemeService(),
            child: Consumer<ThemeService>(
              builder: (context, themeService, child) {
                return MaterialApp(
                  title: 'AIRTA',
                  theme: _lightTheme,
                  darkTheme: _darkTheme,
                  themeMode: themeService.isDarkMode ? ThemeMode.dark : ThemeMode.light,
                  locale: languageService.currentLocale,
                  supportedLocales: LanguageService.supportedLocales,
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  localeResolutionCallback: LanguageService.localeResolutionCallback,
                  home: _checkingVersion
                      ? const Scaffold(
                          body: Center(
                            child: CircularProgressIndicator(),
                          ),
                        )
                      : !_disclaimerAccepted
                          ? DisclaimerScreen(onAccepted: _onDisclaimerAccepted)
                          : _updateRequired
                              ? ForceUpdateScreen()
                              : _showPermissionDialog
                                  ? _PermissionRequestScreen(
                                      onAccept: _requestPermissions)
                                  : MultiProvider(
                                  providers: [
                                    ChangeNotifierProvider(
                                      create: (_) => ToxicityAnalyzerController()
                                        ..loadPersistentFreeTierState()
                                        ..initializeIosShareIntentListener(),
                                    ),
                                    ChangeNotifierProvider.value(
                                      value: SubscriptionService(),
                                    ),
                                  ],
                                    child: kScreenshotMode
                                        ? const Stack(
                                            children: [
                                              Positioned.fill(
                                                child: ScreenshotStage(
                                                  child: ToxicityAnalyzerMasterView(),
                                                ),
                                              ),
                                              ScreenshotStatusOverlay(),
                                            ],
                                          )
                                        : const ToxicityAnalyzerMasterView(),
                                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  static final ThemeData _lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blueGrey,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
    textTheme: GoogleFonts.getTextTheme('Noto Sans KR'),
  );

  static final ThemeData _darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blueGrey,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
    textTheme: GoogleFonts.getTextTheme('Noto Sans KR', ThemeData.dark().textTheme),
  );
}

class _PermissionRequestScreen extends StatelessWidget {
  final VoidCallback onAccept;

  const _PermissionRequestScreen({required this.onAccept});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.security, size: 80, color: Colors.blueGrey),
              const SizedBox(height: 32),
              const Text(
                'Permissions Required',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              const Text(
                'This application requires access to:',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              _PermissionItem(
                icon: Icons.message,
                title: 'Text Messages',
                description:
                    'To analyze your SMS conversations for relationship patterns',
              ),
              const SizedBox(height: 16),
              _PermissionItem(
                icon: Icons.contacts,
                title: 'Contacts',
                description:
                    'To display contact names instead of phone numbers',
              ),
              const SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue.withOpacity(0.3)),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.lock, size: 20, color: Colors.blue),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Your data stays on your device and is never shared or uploaded.',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: onAccept,
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Grant Permissions',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PermissionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _PermissionItem({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.blueGrey),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

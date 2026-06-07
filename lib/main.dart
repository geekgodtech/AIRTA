import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:airta/controllers/toxicity_analyzer_controller.dart';
import 'package:airta/widgets/toxicity_analyzer_master_view.dart';
import 'package:airta/services/subscription_service.dart';
import 'package:airta/services/remote_config_service.dart';
import 'package:airta/services/version_check_service.dart';
import 'package:airta/services/language_service.dart';
import 'package:airta/l10n/app_localizations.dart';
import 'package:airta/screens/force_update_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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

  runApp(const ToxicityAnalyzerApp());
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

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
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
    _checkPermissions();
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
    print('DEBUG: Requesting SMS and Contacts permissions...');
    await Permission.sms.request();
    await Permission.contacts.request();
    print('DEBUG: Permissions requested');

    setState(() {
      _showPermissionDialog = false;
      _permissionsGranted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: LanguageService(),
      child: Consumer<LanguageService>(
        builder: (context, languageService, child) {
          return MaterialApp(
            title: 'Which partner is at fault?',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
              useMaterial3: true,
            ),
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
                            child: const ToxicityAnalyzerMasterView(),
                          ),
          );
        },
      ),
    );
  }
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

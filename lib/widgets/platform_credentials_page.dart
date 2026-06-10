import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:airta/services/subscription_service.dart';
import 'package:airta/widgets/membership_landing_page.dart';
import 'dart:convert';
import 'package:airta/l10n/app_localizations.dart';

class PlatformCredentialsPage extends StatefulWidget {
  const PlatformCredentialsPage({super.key});

  @override
  State<PlatformCredentialsPage> createState() =>
      _PlatformCredentialsPageState();
}

class _PlatformCredentialsPageState extends State<PlatformCredentialsPage> {
  final List<PlatformCredential> _platforms = [
    PlatformCredential(
      id: 'whatsapp',
      name: 'WhatsApp',
      icon: Icons.chat,
    ),
    PlatformCredential(
      id: 'telegram',
      name: 'Telegram',
      icon: Icons.telegram,
    ),
    PlatformCredential(
      id: 'messenger',
      name: 'Messenger',
      icon: Icons.messenger,
    ),
    PlatformCredential(
      id: 'instagram',
      name: 'Instagram',
      icon: Icons.camera_alt,
    ),
    PlatformCredential(
      id: 'twitter',
      name: 'Twitter/X',
      icon: Icons.tag,
    ),
    PlatformCredential(
      id: 'snapchat',
      name: 'Snapchat',
      icon: Icons.camera,
    ),
    PlatformCredential(
      id: 'signal',
      name: 'Signal',
      icon: Icons.lock,
    ),
    PlatformCredential(
      id: 'discord',
      name: 'Discord',
      icon: Icons.discord,
      requiresProPlus: true,
    ),
  ];

  bool _isLoading = true;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _loadCredentials();
  }

  Future<void> _loadCredentials() async {
    setState(() => _isLoading = true);

    try {
      final prefs = await SharedPreferences.getInstance();

      for (var platform in _platforms) {
        final data = prefs.getString('platform_${platform.id}');
        if (data != null) {
          final json = jsonDecode(data) as Map<String, dynamic>;
          platform.isActive = json['isActive'] as bool? ?? false;
          platform.usernameController.text = json['username'] as String? ?? '';
          platform.passwordController.text = json['password'] as String? ?? '';
        }
      }
    } catch (e) {
      debugPrint('Error loading credentials: $e');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _saveCredentials() async {
    setState(() => _isSaving = true);

    try {
      final prefs = await SharedPreferences.getInstance();

      for (var platform in _platforms) {
        final data = jsonEncode({
          'isActive': platform.isActive,
          'username': platform.usernameController.text,
          'password': platform.passwordController.text,
        });
        await prefs.setString('platform_${platform.id}', data);
      }

      if (mounted) {
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.credentialsSavedSuccess),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.errorSavingCredentials(e.toString())),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      setState(() => _isSaving = false);
    }
  }

  @override
  void dispose() {
    for (var platform in _platforms) {
      platform.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: LayoutBuilder(
          builder: (context, constraints) {
            final isNarrow = constraints.maxWidth < 400;
            return Text(
              l10n.platformCredentialsTitle,
              style: TextStyle(
                fontSize: isNarrow ? 18 : 20,
                height: 1.0,
                letterSpacing: isNarrow ? -0.5 : 0,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            );
          },
        ),
        actions: [
          if (_isSaving)
            const Padding(
              padding: EdgeInsets.all(16),
              child: SizedBox.square(
                dimension: 24,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            )
          else
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: _saveCredentials,
              tooltip: l10n.saveCredentialsTooltip,
            ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.blue.withOpacity(0.1),
                  child: Row(
                    children: [
                      const Icon(Icons.info_outline, color: Colors.blue),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          l10n.credentialsSecurityInfo,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: _platforms.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      return _PlatformCredentialRow(
                        platform: _platforms[index],
                        onChanged: () => setState(() {}),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, -2),
                      ),
                    ],
                  ),
                  child: SafeArea(
                    child: SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: _isSaving ? null : _saveCredentials,
                        icon: _isSaving
                            ? const SizedBox.square(
                                dimension: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : const Icon(Icons.save),
                        label: Text(
                            _isSaving ? l10n.savingButton : l10n.saveAllCredentials),
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

class _PlatformCredentialRow extends StatelessWidget {
  final PlatformCredential platform;
  final VoidCallback onChanged;

  const _PlatformCredentialRow({
    required this.platform,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final subscriptionService = context.watch<SubscriptionService>();
    final isProPlus = subscriptionService.activeTier == MembershipTier.proPlus;
    final isLocked = platform.requiresProPlus && !isProPlus;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  value: platform.isActive && !isLocked,
                  onChanged: isLocked
                      ? null
                      : (value) {
                          if (isLocked) {
                            _showUpgradeDialog(context);
                          } else {
                            platform.isActive = value ?? false;
                            onChanged();
                          }
                        },
                ),
                Icon(
                  platform.icon,
                  size: 32,
                  color: isLocked ? Colors.grey : null,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        platform.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isLocked ? Colors.grey : null,
                        ),
                      ),
                      if (isLocked) ...[
                        const SizedBox(width: 8),
                        const Icon(Icons.lock, size: 20, color: Colors.orange),
                        const SizedBox(width: 4),
                        Text(
                          l10n.proPlusLabel,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                if (isLocked)
                  TextButton(
                    onPressed: () => _showUpgradeDialog(context),
                    child: Text(l10n.upgradeButton),
                  ),
              ],
            ),
            if (platform.isActive && !isLocked) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: platform.usernameController,
                      decoration: InputDecoration(
                        labelText: l10n.usernameLabel,
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.person),
                        isDense: true,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      controller: platform.passwordController,
                      obscureText: !platform.showPassword,
                      decoration: InputDecoration(
                        labelText: l10n.passwordLabel,
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.lock),
                        isDense: true,
                        suffixIcon: IconButton(
                          icon: Icon(
                            platform.showPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            platform.showPassword = !platform.showPassword;
                            onChanged();
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _showUpgradeDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.upgradeToProPlusTitle),
        content: Text(l10n.upgradeToProPlusBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(l10n.cancelButton),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MembershipLandingPage(),
                ),
              );
            },
            child: Text(l10n.upgradeNowButton),
          ),
        ],
      ),
    );
  }
}

class PlatformCredential {
  final String id;
  final String name;
  final IconData icon;
  final bool requiresProPlus;
  bool isActive;
  bool showPassword;
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  PlatformCredential({
    required this.id,
    required this.name,
    required this.icon,
    this.requiresProPlus = false,
    this.isActive = false,
    this.showPassword = false,
  })  : usernameController = TextEditingController(),
        passwordController = TextEditingController();

  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:airta/l10n/app_localizations.dart';
import 'package:airta/widgets/analyzer_workspace.dart';
import 'package:airta/widgets/language_selector.dart';
import 'package:airta/widgets/dark_mode_switch.dart';
import 'package:airta/widgets/about_page.dart';
import 'package:airta/widgets/user_account_page.dart';
import 'package:airta/widgets/membership_landing_page.dart';
import 'package:airta/widgets/referral_screen.dart';

class ToxicityAnalyzerMasterView extends StatelessWidget {
  const ToxicityAnalyzerMasterView({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final isNarrow = mq.size.width < 400;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.appTitle,
          style: TextStyle(
            fontSize: isNarrow ? 18 : 20,
            height: 1.0,
            letterSpacing: isNarrow ? -0.5 : 0,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          // Hamburger menu with all options
          _HamburgerMenu(),
          const SizedBox(width: 8),
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const AnalyzerWorkspace(),
    );
  }
}


/// Hamburger menu containing all app options
class _HamburgerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    
    return PopupMenuButton<String>(
      icon: const Icon(Icons.menu),
      tooltip: 'Menu',
      offset: const Offset(0, 40),
      onSelected: (value) {
        switch (value) {
          case 'my_account':
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const UserAccountPage()),
            );
            break;
          case 'membership':
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const MembershipLandingPage()),
            );
            break;
          case 'referral':
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const ReferralScreen()),
            );
            break;
          case 'about':
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const AboutPage()),
            );
            break;
          case 'support':
            showDialog(
              context: context,
              builder: (context) => _SupportDialog(),
            );
            break;
        }
      },
      itemBuilder: (context) => [
        // Dark Mode Switch Section
        PopupMenuItem<String>(
          enabled: false,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Icon(Icons.brightness_6, color: colorScheme.primary, size: 20),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Dark Mode',
                    style: TextStyle(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 60,
                  height: 30,
                  child: DarkModeSwitch(),
                ),
              ],
            ),
          ),
        ),
        const PopupMenuDivider(),
        
        // Language Selector Section
        PopupMenuItem<String>(
          enabled: false,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Icon(Icons.language, color: colorScheme.primary, size: 20),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Language',
                    style: TextStyle(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                  child: const LanguageSelector(),
                ),
              ],
            ),
          ),
        ),
        const PopupMenuDivider(),
        
        // Navigation Links
        PopupMenuItem<String>(
          value: 'my_account',
          child: Row(
            children: [
              Icon(Icons.account_circle, color: colorScheme.primary, size: 20),
              const SizedBox(width: 12),
              Text(
                'My Account',
                style: TextStyle(color: colorScheme.onSurface),
              ),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'membership',
          child: Row(
            children: [
              Icon(Icons.workspace_premium, color: colorScheme.primary, size: 20),
              const SizedBox(width: 12),
              Text(
                'Membership Options',
                style: TextStyle(color: colorScheme.onSurface),
              ),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'referral',
          child: Row(
            children: [
              Icon(Icons.card_giftcard, color: colorScheme.primary, size: 20),
              const SizedBox(width: 12),
              Text(
                'Referral Program',
                style: TextStyle(color: colorScheme.onSurface),
              ),
            ],
          ),
        ),
        const PopupMenuDivider(),
        
        // Help Section
        PopupMenuItem<String>(
          value: 'support',
          child: Row(
            children: [
              Icon(Icons.support_agent, color: colorScheme.primary, size: 20),
              const SizedBox(width: 12),
              Text(
                'Support',
                style: TextStyle(color: colorScheme.onSurface),
              ),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'about',
          child: Row(
            children: [
              Icon(Icons.info, color: colorScheme.primary, size: 20),
              const SizedBox(width: 12),
              Text(
                'About',
                style: TextStyle(color: colorScheme.onSurface),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SupportDialog extends StatelessWidget {
  Future<void> _launchEmail(BuildContext context, String email) async {
    final uri = Uri.parse('mailto:$email');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Could not open email app. Contact: $email'),
          duration: const Duration(seconds: 5),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 400;

    return AlertDialog(
      title: Row(
        children: [
          Icon(Icons.support_agent, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 12),
          const Text('Contact Support'),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Need help with AIRTA? Reach out to us:',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: isSmallScreen ? 16 : 20),
          _EmailTile(
            icon: Icons.support_agent,
            title: 'Technical Support',
            email: 'support@airta.net',
            description: 'Questions, bugs, help using the app',
            onTap: () => _launchEmail(context, 'support@airta.net'),
          ),
          SizedBox(height: isSmallScreen ? 12 : 16),
          _EmailTile(
            icon: Icons.business,
            title: 'Business Inquiries',
            email: 'ceo@airta.net',
            description: 'Partnerships, enterprise, media',
            onTap: () => _launchEmail(context, 'ceo@airta.net'),
          ),
          SizedBox(height: isSmallScreen ? 12 : 16),
          _EmailTile(
            icon: Icons.privacy_tip,
            title: 'Privacy Questions',
            email: 'privacy@airta.net',
            description: 'Data, privacy policy, deletion requests',
            onTap: () => _launchEmail(context, 'privacy@airta.net'),
          ),
          SizedBox(height: isSmallScreen ? 16 : 20),
          Text(
            'We typically respond within 24 hours.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    );
  }
}

class _EmailTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String email;
  final String description;
  final VoidCallback onTap;

  const _EmailTile({
    required this.icon,
    required this.title,
    required this.email,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    email,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.open_in_new,
              size: 18,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}

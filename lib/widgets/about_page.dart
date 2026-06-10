import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:airta/l10n/app_localizations.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  Future<void> _launchEmail(String email) async {
    final uri = Uri.parse('mailto:$email');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.aboutTitle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(isSmallScreen ? 16 : 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App logo/name section
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.psychology,
                    size: isSmallScreen ? 64 : 80,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(height: isSmallScreen ? 12 : 16),
                  Text(
                    l10n.appTitle,
                    style: isSmallScreen
                        ? Theme.of(context).textTheme.titleLarge
                        : Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Version 1.0.0',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: isSmallScreen ? 24 : 32),

            // About description
            Text(
              l10n.aboutDescription,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: isSmallScreen ? 24 : 32),

            // Contact section
            _SectionTitle(title: l10n.contactUs),
            SizedBox(height: isSmallScreen ? 8 : 12),
            
            _ContactTile(
              icon: Icons.support_agent,
              title: l10n.supportEmail,
              email: 'support@airta.net',
              description: l10n.supportEmailDesc,
              onTap: () => _launchEmail('support@airta.net'),
              isSmallScreen: isSmallScreen,
            ),
            SizedBox(height: isSmallScreen ? 8 : 12),
            
            _ContactTile(
              icon: Icons.business,
              title: l10n.businessEmail,
              email: 'ceo@airta.net',
              description: l10n.businessEmailDesc,
              onTap: () => _launchEmail('ceo@airta.net'),
              isSmallScreen: isSmallScreen,
            ),
            SizedBox(height: isSmallScreen ? 8 : 12),
            
            _ContactTile(
              icon: Icons.privacy_tip,
              title: l10n.privacyEmail,
              email: 'privacy@airta.net',
              description: l10n.privacyEmailDesc,
              onTap: () => _launchEmail('privacy@airta.net'),
              isSmallScreen: isSmallScreen,
            ),
            SizedBox(height: isSmallScreen ? 24 : 32),

            // Links section
            _SectionTitle(title: l10n.importantLinks),
            SizedBox(height: isSmallScreen ? 8 : 12),
            
            _LinkTile(
              icon: Icons.language,
              title: l10n.website,
              url: 'airta.net',
              onTap: () => _launchUrl('https://airta.net'),
              isSmallScreen: isSmallScreen,
            ),
            SizedBox(height: isSmallScreen ? 8 : 12),
            
            _LinkTile(
              icon: Icons.description,
              title: l10n.privacyPolicy,
              url: 'airta.net/privacy',
              onTap: () => _launchUrl('https://airta.net/privacy'),
              isSmallScreen: isSmallScreen,
            ),
            SizedBox(height: isSmallScreen ? 8 : 12),
            
            _LinkTile(
              icon: Icons.article,
              title: l10n.termsOfService,
              url: 'airta.net/terms',
              onTap: () => _launchUrl('https://airta.net/terms'),
              isSmallScreen: isSmallScreen,
            ),
            SizedBox(height: isSmallScreen ? 8 : 12),
            
            _LinkTile(
              icon: Icons.code,
              title: l10n.github,
              url: 'github.com/Airta-Admin/AIRTA',
              onTap: () => _launchUrl('https://github.com/Airta-Admin/AIRTA'),
              isSmallScreen: isSmallScreen,
            ),
            SizedBox(height: isSmallScreen ? 32 : 48),

            // Footer
            Center(
              child: Text(
                '© 2026 AIRTA. ${l10n.allRightsReserved}',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}

class _ContactTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String email;
  final String description;
  final VoidCallback onTap;
  final bool isSmallScreen;

  const _ContactTile({
    required this.icon,
    required this.title,
    required this.email,
    required this.description,
    required this.onTap,
    this.isSmallScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: EdgeInsets.all(isSmallScreen ? 12 : 16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest.withOpacity(0.5),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(isSmallScreen ? 8 : 10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                size: isSmallScreen ? 20 : 24,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            SizedBox(width: isSmallScreen ? 12 : 16),
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
                  SizedBox(height: 2),
                  Text(
                    email,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 2),
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
              size: isSmallScreen ? 16 : 20,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}

class _LinkTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String url;
  final VoidCallback onTap;
  final bool isSmallScreen;

  const _LinkTile({
    required this.icon,
    required this.title,
    required this.url,
    required this.onTap,
    this.isSmallScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: isSmallScreen ? 12 : 16,
          vertical: isSmallScreen ? 10 : 12,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: isSmallScreen ? 18 : 20,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
            ),
            SizedBox(width: isSmallScreen ? 10 : 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    url,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: isSmallScreen ? 14 : 16,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.4),
            ),
          ],
        ),
      ),
    );
  }
}

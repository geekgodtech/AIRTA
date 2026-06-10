#!/usr/bin/env python3
"""Replace AppBar actions with hamburger menu containing all options"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\widgets\toxicity_analyzer_master_view.dart"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# Update imports
old_imports = """import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:airta/l10n/app_localizations.dart';
import 'package:airta/widgets/analyzer_workspace.dart';
import 'package:airta/widgets/language_selector.dart';
import 'package:airta/widgets/dark_mode_switch.dart';
import 'package:airta/widgets/about_page.dart';"""

new_imports = """import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:airta/l10n/app_localizations.dart';
import 'package:airta/widgets/analyzer_workspace.dart';
import 'package:airta/widgets/language_selector.dart';
import 'package:airta/widgets/dark_mode_switch.dart';
import 'package:airta/widgets/about_page.dart';
import 'package:airta/widgets/user_account_page.dart';
import 'package:airta/widgets/membership_landing_page.dart';
import 'package:airta/widgets/referral_screen.dart';"""

content = content.replace(old_imports, new_imports)

# Replace the entire AppBar section
old_appbar = '''      appBar: AppBar(
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
          const DarkModeSwitch(),
          SizedBox(width: isNarrow ? 4 : 8),
          const LanguageSelector(),
          SizedBox(width: isNarrow ? 4 : 8),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: (value) {
              if (value == 'about') {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              } else if (value == 'support') {
                showDialog(
                  context: context,
                  builder: (context) => _SupportDialog(),
                );
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'support',
                child: Row(
                  children: [
                    Icon(Icons.support_agent, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 12),
                    const Text('Support'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'about',
                child: Row(
                  children: [
                    Icon(Icons.info, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 12),
                    const Text('About'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: isNarrow ? 2 : 4),
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),'''

new_appbar = '''      appBar: AppBar(
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
      ),'''

content = content.replace(old_appbar, new_appbar)

# Add the HamburgerMenu class before _SupportDialog
hamburger_menu_class = '''
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
                const LanguageSelector(),
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
              const Text('My Account'),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'membership',
          child: Row(
            children: [
              Icon(Icons.workspace_premium, color: colorScheme.primary, size: 20),
              const SizedBox(width: 12),
              const Text('Membership Options'),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'referral',
          child: Row(
            children: [
              Icon(Icons.card_giftcard, color: colorScheme.primary, size: 20),
              const SizedBox(width: 12),
              const Text('Referral Program'),
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
              const Text('Support'),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'about',
          child: Row(
            children: [
              Icon(Icons.info, color: colorScheme.primary, size: 20),
              const SizedBox(width: 12),
              const Text('About'),
            ],
          ),
        ),
      ],
    );
  }
}

'''

# Insert before _SupportDialog class
content = content.replace('class _SupportDialog', hamburger_menu_class + 'class _SupportDialog')

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Added hamburger menu to AppBar with:")
print("- Dark Mode switch (in menu)")
print("- Language selector (in menu)")
print("- My Account link")
print("- Membership Options link")
print("- Referral Program link")
print("- Support link")
print("- About link")
print("- Cleaned up AppBar actions to just show hamburger menu")

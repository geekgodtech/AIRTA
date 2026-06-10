#!/usr/bin/env python3
"""Add Developer License and User Submitted Packs cards to MembershipLandingPage"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\widgets\membership_landing_page.dart"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# Add import for UserAccountPage and UserSubmittedPacksPage
old_import = "import 'package:airta/widgets/referral_screen.dart';"
new_import = """import 'package:airta/widgets/referral_screen.dart';
import 'package:airta/widgets/user_account_page.dart';
import 'package:airta/widgets/user_submitted_packs_page.dart';
import 'package:airta/services/developer_license_service.dart';"""

content = content.replace(old_import, new_import)

# Add link to User Account page in the AppBar actions
old_appbar = '''      appBar: AppBar(
        title: LayoutBuilder(
          builder: (context, constraints) {
            final isNarrow = constraints.maxWidth < 400;
            return Text(
              l10n.membershipOptions,
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
      ),'''

new_appbar = '''      appBar: AppBar(
        title: LayoutBuilder(
          builder: (context, constraints) {
            final isNarrow = constraints.maxWidth < 400;
            return Text(
              l10n.membershipOptions,
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
          TextButton.icon(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const UserAccountPage()),
              );
            },
            icon: const Icon(Icons.account_circle),
            label: const Text('My Account'),
            style: TextButton.styleFrom(
              foregroundColor: colorScheme.onPrimary,
            ),
          ),
        ],
      ),'''

content = content.replace(old_appbar, new_appbar)

# Add Developer License and User Submitted Packs cards after the _RestorePurchasesButton
old_end = '''                    // Restore Purchases Section
                    const SizedBox(height: 32),
                    _RestorePurchasesButton(),
                  ],
                ),
              );'''

new_end = '''                    // Developer License Section
                    const SizedBox(height: 32),
                    _DeveloperLicenseCard(
                      width: cardWidth,
                      colorScheme: colorScheme,
                    ),
                    // User Submitted Packs Marketplace Section
                    const SizedBox(height: 32),
                    _UserSubmittedPacksCard(
                      width: cardWidth,
                      colorScheme: colorScheme,
                    ),
                    // Restore Purchases Section
                    const SizedBox(height: 32),
                    _RestorePurchasesButton(),
                  ],
                ),
              );'''

content = content.replace(old_end, new_end)

# Find the end of the file (before the last class or at the end) and add new card classes
# We'll add them before the _MembershipHero class
membership_hero_marker = "class _MembershipHero extends StatelessWidget"

new_card_classes = '''/// Developer License card for creators to submit metric packs
class _DeveloperLicenseCard extends StatelessWidget {
  final double width;
  final ColorScheme colorScheme;

  const _DeveloperLicenseCard({
    required this.width,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final devLicense = DeveloperLicenseService();

    return Card(
      elevation: 4,
      child: Container(
        width: width,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFF1a1a3e),
              const Color(0xFF0d0d1a),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.developer_mode,
                  color: const Color(0xFFc080ff),
                  size: 32,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Developer License',
                    style: TextStyle(
                      color: colorScheme.onSurface,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'Create and sell your own metric packs. Earn 50% on every sale. One-time purchase.',
              style: TextStyle(
                color: colorScheme.onSurface.withOpacity(0.7),
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '\\$9.99 one-time',
              style: TextStyle(
                color: const Color(0xFF60ff60),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const UserAccountPage()),
                  );
                },
                icon: const Icon(Icons.account_circle),
                label: Text(devLicense.hasLicense ? 'View Dashboard' : 'Get License'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFc080ff),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// User Submitted Packs Marketplace card
class _UserSubmittedPacksCard extends StatelessWidget {
  final double width;
  final ColorScheme colorScheme;

  const _UserSubmittedPacksCard({
    required this.width,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Card(
      elevation: 4,
      child: Container(
        width: width,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFF1a3a1a),
              const Color(0xFF0d1a0d),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.people,
                  color: const Color(0xFF60ff60),
                  size: 32,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Community Packs',
                    style: TextStyle(
                      color: colorScheme.onSurface,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'Buy unique metric packs created by the community. Auto-translated to 16 languages.',
              style: TextStyle(
                color: colorScheme.onSurface.withOpacity(0.7),
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Starting at ',
                  style: TextStyle(
                    color: colorScheme.onSurface.withOpacity(0.7),
                    fontSize: 14,
                  ),
                ),
                Text(
                  '\\$4.99',
                  style: TextStyle(
                    color: const Color(0xFF60ff60),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const UserSubmittedPacksPage()),
                  );
                },
                icon: const Icon(Icons.store),
                label: const Text('Browse Marketplace'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF60ff60),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

'''

content = content.replace(membership_hero_marker, new_card_classes + membership_hero_marker)

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Added to MembershipLandingPage:")
print("- 'My Account' button in AppBar")
print("- Developer License card")
print("- User Submitted Packs (Community Packs) card")

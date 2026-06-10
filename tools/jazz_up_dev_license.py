#!/usr/bin/env python3
"""Jazz up the Developer License card with compelling marketing copy"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\widgets\membership_landing_page.dart"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# Replace the old DeveloperLicenseCard with a jazzed up version
old_card = '''/// Developer License card for creators to submit metric packs
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
}'''

new_card = '''/// Developer License card for creators to submit metric packs - JAZZED UP
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
    final hasLicense = devLicense.hasLicense;

    return Card(
      elevation: 6,
      shadowColor: const Color(0xFFc080ff).withOpacity(0.3),
      child: Container(
        width: width,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFF2a1a4e),
              const Color(0xFF1a0d2e),
              const Color(0xFF0d0618),
            ],
          ),
          border: Border.all(
            color: const Color(0xFFc080ff).withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with badge
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFc080ff).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.developer_mode,
                    color: Color(0xFFc080ff),
                    size: 28,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Metrics Pack Developer',
                        style: TextStyle(
                          color: colorScheme.onSurface,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (hasLicense)
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: const Color(0xFF60ff60).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            'LICENSED',
                            style: TextStyle(
                              color: Color(0xFF60ff60),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            // Benefit highlights
            _buildBenefitRow(Icons.language, '🌍 16 Languages = Global Exposure!'),
            const SizedBox(height: 8),
            _buildBenefitRow(Icons.auto_awesome, 'Auto-translated to 16 markets'),
            const SizedBox(height: 8),
            _buildBenefitRow(Icons.attach_money, 'Earn 50% on EVERY sale'),
            const SizedBox(height: 8),
            _buildBenefitRow(Icons.trending_up, 'ROI in days, not months'),
            
            const SizedBox(height: 16),
            
            // ROI Banner
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFffaa40).withOpacity(0.15),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xFFffaa40).withOpacity(0.3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '💰 ROI in as little as 6-12 sales!',
                    style: TextStyle(
                      color: const Color(0xFFffaa40),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Make back your \\$29.99 license fee fast, then it\\'s pure profit.',
                    style: TextStyle(
                      color: colorScheme.onSurface.withOpacity(0.7),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Price
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\\$29.99',
                  style: TextStyle(
                    color: const Color(0xFF60ff60),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  'one-time • lifetime access',
                  style: TextStyle(
                    color: colorScheme.onSurface.withOpacity(0.6),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 16),
            
            // CTA Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const UserAccountPage()),
                  );
                },
                icon: Icon(
                  hasLicense ? Icons.dashboard : Icons.rocket_launch,
                ),
                label: Text(
                  hasLicense ? 'View Creator Dashboard' : 'Become a Creator',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFc080ff),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                  shadowColor: const Color(0xFFc080ff).withOpacity(0.4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBenefitRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color(0xFFc080ff),
          size: 18,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: colorScheme.onSurface.withOpacity(0.85),
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}'''

content = content.replace(old_card, new_card)

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Jazzed up Developer License card with:")
print("- Corrected price to $29.99")
print("- 16 Languages = Global Exposure messaging")
print("- ROI banner (6-12 sales to break even)")
print("- Benefit highlights with icons")
print("- Licensed badge for existing license holders")
print("- Enhanced visual design with gradient and shadow")

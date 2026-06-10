import 'package:flutter/material.dart';
import 'package:airta/services/subscription_service.dart';
import 'package:airta/services/referral_service.dart';
import 'package:airta/services/developer_license_service.dart';
import 'package:airta/services/user_submitted_packs_service.dart';
import 'package:airta/widgets/referral_screen.dart';
import 'package:airta/widgets/membership_landing_page.dart';

/// User account page showing membership, referrals, purchases, sales, and developer license.
class UserAccountPage extends StatefulWidget {
  const UserAccountPage({super.key});

  @override
  State<UserAccountPage> createState() => _UserAccountPageState();
}

class _UserAccountPageState extends State<UserAccountPage> {
  final _subService = SubscriptionService();
  final _referralService = ReferralService();
  final _devLicenseService = DeveloperLicenseService();
  final _packsService = UserSubmittedPacksService();

  double _creatorBalance = 0.0;
  bool _loadingBalance = false;

  @override
  void initState() {
    super.initState();
    _loadCreatorBalance();
  }

  Future<void> _loadCreatorBalance() async {
    if (_devLicenseService.licenseEmail.isEmpty) return;
    setState(() => _loadingBalance = true);
    final balance =
        await _packsService.getCreatorBalance(_devLicenseService.licenseEmail);
    if (mounted) {
      setState(() {
        _creatorBalance = balance;
        _loadingBalance = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0d0d1a),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1a1a3e),
        title: const Text('My Account',
            style: TextStyle(color: Color(0xFFd0d0ff), fontSize: 18)),
        iconTheme: const IconThemeData(color: Color(0xFFa0a0c0)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Membership Section
            _buildSectionHeader('Membership', Icons.card_membership),
            _buildMembershipCard(),
            const SizedBox(height: 20),

            // Referrals Section
            _buildSectionHeader('Referral Program', Icons.card_giftcard),
            _buildReferralCard(),
            const SizedBox(height: 20),

            // Purchases Section
            _buildSectionHeader('My Purchases', Icons.shopping_bag),
            _buildPurchasesCard(),
            const SizedBox(height: 20),

            // Developer License & Sales Section
            _buildSectionHeader('Metric Pack Creator', Icons.developer_mode),
            _buildDeveloperCard(),
            const SizedBox(height: 20),

            // Sales Section (only if developer)
            if (_devLicenseService.hasLicense) ...[
              _buildSectionHeader('My Sales', Icons.trending_up),
              _buildSalesCard(),
              const SizedBox(height: 20),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF6060ff), size: 20),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFFd0d0ff),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMembershipCard() {
    final tier = _subService.activeTier;
    final isTrialActive = _referralService.isTrialActive;
    final trialDays = _referralService.trialDaysRemaining;

    return _CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: _tierColor(tier),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  tier.displayName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w700),
                ),
              ),
              if (isTrialActive) ...[
                const SizedBox(width: 8),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1a3a1a),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: const Color(0xFF2a5a2a)),
                  ),
                  child: Text(
                    'Trial — $trialDays days left',
                    style: const TextStyle(
                        color: Color(0xFF60ff60), fontSize: 11),
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 10),
          Text(
            _tierDescription(tier),
            style: const TextStyle(color: Color(0xFF8888aa), fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildReferralCard() {
    final credits = _referralService.creditCount;
    final pending = _referralService.pendingNumbers.length;
    final credited = _referralService.creditedNumbers.length;

    return _CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Progress dots
          Row(
            children: [
              ...List.generate(ReferralService.requiredCredits, (i) {
                return Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: i < credits
                        ? const Color(0xFF40cc40)
                        : const Color(0xFF1a1a3a),
                    border: Border.all(
                      color: i < credits
                          ? const Color(0xFF60ff60)
                          : const Color(0xFF2a2a5a),
                    ),
                  ),
                  child: i < credits
                      ? const Icon(Icons.check, color: Colors.white, size: 14)
                      : null,
                );
              }),
              const Spacer(),
              Text(
                '$credits / ${ReferralService.requiredCredits}',
                style: const TextStyle(
                    color: Color(0xFFa0a0c0),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _statChip('Pending', '$pending', const Color(0xFFc0c040)),
              const SizedBox(width: 8),
              _statChip('Credited', '$credited', const Color(0xFF40cc40)),
              const SizedBox(width: 8),
              _statChip(
                  'Remaining',
                  '${_referralService.creditsRemaining}',
                  const Color(0xFF6060ff)),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ReferralScreen()),
                );
              },
              icon:
                  const Icon(Icons.people, color: Color(0xFFc080ff), size: 16),
              label: const Text('Refer More Friends',
                  style: TextStyle(color: Color(0xFFc080ff), fontSize: 13)),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xFF4a2a7a)),
                padding: const EdgeInsets.symmetric(vertical: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPurchasesCard() {
    final hasMembership = _subService.activeTier != MembershipTier.free;
    final hasDiscordAddon = _subService.hasDiscordAccess;
    final purchasedPacks = _packsService.purchasedPackIds;
    final hasDevLicense = _devLicenseService.hasLicense;

    return _CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Memberships Section
          const Text(
            'Memberships:',
            style: TextStyle(
              color: Color(0xFFd0d0ff),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          if (hasMembership)
            Row(
              children: [
                const Icon(Icons.card_membership, color: Color(0xFF6060ff), size: 18),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '${_subService.activeTier.displayName} Membership',
                    style: const TextStyle(color: Color(0xFFd0d0ff), fontSize: 13),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const MembershipLandingPage()),
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    'Upgrade NOW!',
                    style: TextStyle(color: Color(0xFF60ff60), fontSize: 12),
                  ),
                ),
              ],
            )
          else
            Row(
              children: [
                const Icon(Icons.card_membership, color: Color(0xFF6060ff), size: 18),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Free Membership',
                    style: TextStyle(color: Color(0xFFd0d0ff), fontSize: 13),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const MembershipLandingPage()),
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    'Upgrade NOW!',
                    style: TextStyle(color: Color(0xFF60ff60), fontSize: 12),
                  ),
                ),
              ],
            ),
          if (hasDiscordAddon) ...[
            const SizedBox(height: 6),
            Row(
              children: [
                const Icon(Icons.discord, color: Color(0xFF5865F2), size: 18),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Discord Integration Add-on',
                    style: TextStyle(color: Color(0xFFd0d0ff), fontSize: 13),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1a3a1a),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: const Color(0xFF2a5a2a)),
                  ),
                  child: const Text(
                    'Active',
                    style: TextStyle(color: Color(0xFF60ff60), fontSize: 10),
                  ),
                ),
              ],
            ),
          ],
          const SizedBox(height: 16),
          const Divider(color: Color(0xFF2a2a5a), height: 1),
          const SizedBox(height: 16),

          // Licenses Section
          const Text(
            'Licenses:',
            style: TextStyle(
              color: Color(0xFFd0d0ff),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          if (hasDevLicense)
            Row(
              children: [
                const Icon(Icons.developer_mode, color: Color(0xFF6060ff), size: 18),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Metric Pack Developer License',
                    style: TextStyle(color: Color(0xFFd0d0ff), fontSize: 13),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1a1a3a),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text(
                    '\$29.99 Lifetime',
                    style: TextStyle(color: Color(0xFF6666aa), fontSize: 10),
                  ),
                ),
              ],
            )
          else
            const Text(
              'No licenses purchased',
              style: TextStyle(color: Color(0xFF6666aa), fontSize: 12),
            ),
          const SizedBox(height: 16),
          const Divider(color: Color(0xFF2a2a5a), height: 1),
          const SizedBox(height: 16),

          // Metrics Packs Purchased Section
          const Text(
            'Metric Packs Purchased:',
            style: TextStyle(
              color: Color(0xFFd0d0ff),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          if (purchasedPacks.isEmpty)
            const Text(
              'No metric packs purchased yet',
              style: TextStyle(color: Color(0xFF6666aa), fontSize: 12),
            )
          else
            ...purchasedPacks.map((packId) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  const Icon(Icons.inventory_2, color: Color(0xFF6060ff), size: 18),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      packId,
                      style: const TextStyle(color: Color(0xFFd0d0ff), fontSize: 13),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1a1a3a),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'Owned',
                      style: TextStyle(color: Color(0xFF6666aa), fontSize: 10),
                    ),
                  ),
                ],
              ),
            )),
          const SizedBox(height: 16),
          const Divider(color: Color(0xFF2a2a5a), height: 1),
          const SizedBox(height: 16),

          // Statistics Section
          Row(
            children: [
              Expanded(
                child: _buildStatBox(
                  'Total Custom Metrics',
                  _packsService.getUserCustomMetricsCount().toString(),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildStatBox(
                  'Total Metrics Owned',
                  _calculateTotalMetricsOwned().toString(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatBox(String label, String value) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1a1a3a),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF2a2a5a)),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              color: Color(0xFF60ff60),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF8888aa),
              fontSize: 11,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  int _calculateTotalMetricsOwned() {
    // Base metrics + purchased packs + custom metrics
    int total = 50; // Base free metrics
    if (_subService.isPackGoodUnlocked) total += 100;
    if (_subService.isPackBadUnlocked) total += 100;
    if (_subService.isPackUglyUnlocked) total += 100;
    if (_subService.isPackNarcissistUnlocked) total += 50;
    if (_subService.isPackSerialKillerUnlocked) total += 50;
    total += _packsService.purchasedPackIds.length * 25; // Avg 25 metrics per user pack
    total += _packsService.getUserCustomMetricsCount();
    return total;
  }


  Widget _buildEmailNotificationsCard() {
    return _CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.email_outlined, color: Color(0xFF6060ff), size: 20),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  'Email Notifications',
                  style: TextStyle(
                    color: Color(0xFFd0d0ff),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFF1a1a3a),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xFF2a2a5a)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Pack Sale Notifications',
                        style: TextStyle(
                          color: Color(0xFFd0d0ff),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Get an email when someone buys your metric pack',
                        style: TextStyle(
                          color: const Color(0xFF8888aa),
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
                StatefulBuilder(
                  builder: (context, setLocalState) {
                    // TODO: Load from persistent storage
                    bool enabled = _devLicenseService.emailNotificationsEnabled;
                    return Switch(
                      value: enabled,
                      onChanged: _devLicenseService.hasLicense
                          ? (value) async {
                              await _devLicenseService.setEmailNotificationsEnabled(value);
                              setLocalState(() {});
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    value
                                        ? 'Email notifications enabled'
                                        : 'Email notifications disabled',
                                  ),
                                  backgroundColor: const Color(0xFF2a5a2a),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            }
                          : null,
                      activeColor: const Color(0xFF60ff60),
                      inactiveTrackColor: const Color(0xFF2a2a5a),
                    );
                  },
                ),
              ],
            ),
          ),
          if (!_devLicenseService.hasLicense)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                'Purchase a Developer License to enable email notifications',
                style: TextStyle(
                  color: const Color(0xFF8888aa),
                  fontSize: 11,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildDeveloperCard() {
    if (_devLicenseService.hasLicense) {
      return _CardContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.verified,
                    color: Color(0xFF60ff60), size: 20),
                const SizedBox(width: 8),
                const Text(
                  'Developer License Active',
                  style: TextStyle(
                      color: Color(0xFF60ff60),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              'Email: ${_devLicenseService.licenseEmail}',
              style:
                  const TextStyle(color: Color(0xFF8888aa), fontSize: 12),
            ),
            if (_devLicenseService.purchaseDate != null)
              Text(
                'Since: ${_formatDate(_devLicenseService.purchaseDate!)}',
                style:
                    const TextStyle(color: Color(0xFF6666aa), fontSize: 11),
              ),
            const SizedBox(height: 8),
            const Text(
              'You can submit metric packs for sale and earn 50% of each sale.',
              style: TextStyle(color: Color(0xFFa0a0c0), fontSize: 12),
            ),
          ],
        ),
      );
    }

    return _CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Want to create and sell your own metric packs?',
            style: TextStyle(
                color: Color(0xFFd0d0ff),
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          const Text(
            'Purchase a Metric Pack Developer License for a one-time fee of \$29.99. '
            'This grants you lifetime access to submit packs and earn 50% of every sale.',
            style: TextStyle(color: Color(0xFF8888aa), fontSize: 12),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () => _showDeveloperLicensePurchase(context),
              icon: const Icon(Icons.shopping_cart, size: 16),
              label: const Text('Get Developer License — \$29.99'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4040cc),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSalesCard() {
    return _CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Creator Balance:',
                style: TextStyle(color: Color(0xFFa0a0c0), fontSize: 13),
              ),
              const SizedBox(width: 8),
              if (_loadingBalance)
                const SizedBox(
                  width: 14,
                  height: 14,
                  child:
                      CircularProgressIndicator(strokeWidth: 2, color: Color(0xFF60ff60)),
                )
              else
                Text(
                  '\$${_creatorBalance.toStringAsFixed(2)}',
                  style: const TextStyle(
                      color: Color(0xFF60ff60),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
            ],
          ),
          const SizedBox(height: 10),
          // Cashout tiers
          _cashoutTier('\$9.99', 'Free month of Standard membership',
              _creatorBalance >= 9.99),
          const SizedBox(height: 4),
          _cashoutTier(
              '\$19.99', 'PayPal payout or pack credit', _creatorBalance >= 19.99),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: _creatorBalance >= 9.99
                      ? () => _requestCashout(context)
                      : null,
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: _creatorBalance >= 9.99
                          ? const Color(0xFF40cc40)
                          : const Color(0xFF2a2a5a),
                    ),
                  ),
                  child: Text(
                    'Request Cashout',
                    style: TextStyle(
                      color: _creatorBalance >= 9.99
                          ? const Color(0xFF40cc40)
                          : const Color(0xFF4a4a6a),
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                onPressed: _loadCreatorBalance,
                icon: const Icon(Icons.refresh, color: Color(0xFF6060ff), size: 20),
                tooltip: 'Refresh balance',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _statChip(String label, String value, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withAlpha(30),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: color.withAlpha(80)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(value,
              style: TextStyle(
                  color: color, fontSize: 13, fontWeight: FontWeight.w700)),
          const SizedBox(width: 4),
          Text(label,
              style: TextStyle(color: color.withAlpha(180), fontSize: 10)),
        ],
      ),
    );
  }

  Widget _cashoutTier(String amount, String desc, bool eligible) {
    return Row(
      children: [
        Icon(
          eligible ? Icons.check_circle : Icons.radio_button_unchecked,
          color: eligible ? const Color(0xFF40cc40) : const Color(0xFF4a4a6a),
          size: 16,
        ),
        const SizedBox(width: 8),
        Text(amount,
            style: TextStyle(
                color: eligible
                    ? const Color(0xFF60ff60)
                    : const Color(0xFF6666aa),
                fontSize: 12,
                fontWeight: FontWeight.w600)),
        const SizedBox(width: 6),
        Text(desc,
            style: const TextStyle(color: Color(0xFF6666aa), fontSize: 11)),
      ],
    );
  }

  Color _tierColor(MembershipTier tier) {
    switch (tier) {
      case MembershipTier.free:
        return const Color(0xFF4a4a6a);
      case MembershipTier.oneTimeUnlock:
        return const Color(0xFF6060ff);
      case MembershipTier.standard:
        return const Color(0xFF40cc40);
      case MembershipTier.pro:
        return const Color(0xFFcc8040);
      case MembershipTier.proPlus:
        return const Color(0xFFcc40cc);
    }
  }

  String _tierDescription(MembershipTier tier) {
    switch (tier) {
      case MembershipTier.free:
        return 'Free tier — limited reports per day. Upgrade to unlock full features.';
      case MembershipTier.oneTimeUnlock:
        return 'One-time unlock — full access to core features.';
      case MembershipTier.standard:
        return 'Standard — \$9.99/mo. Full analysis, PDF reports, all core metrics.';
      case MembershipTier.pro:
        return 'Pro — \$19.99/mo. Multi-platform analysis, advanced features.';
      case MembershipTier.proPlus:
        return 'Pro Plus — \$24.99/mo. Everything including Discord + all platforms.';
    }
  }

  String _formatDate(DateTime dt) {
    return '${dt.month}/${dt.day}/${dt.year}';
  }

  Future<void> _showDeveloperLicensePurchase(BuildContext context) async {
    final emailController = TextEditingController();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF1a1a3e),
        title: const Text('Metric Pack Developer License',
            style: TextStyle(color: Color(0xFFd0d0ff), fontSize: 16)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'One-time purchase: \$9.99',
              style: TextStyle(
                  color: Color(0xFF60ff60),
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 12),
            const Text(
              'This grants you lifetime access to:\n'
              '• Submit 50-metric packs (\$5.00 each)\n'
              '• Submit 100-metric packs (\$10.00 each)\n'
              '• Earn 50% of every sale as creator credit\n'
              '• Cash out at \$9.99 or \$19.99 thresholds',
              style: TextStyle(color: Color(0xFFa0a0c0), fontSize: 13),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              style: const TextStyle(color: Color(0xFFe8e8f0)),
              decoration: const InputDecoration(
                labelText: 'Your email (for license & payouts)',
                labelStyle: TextStyle(color: Color(0xFF6666aa)),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF2a2a5a))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6060ff))),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel',
                style: TextStyle(color: Color(0xFF6666aa))),
          ),
          ElevatedButton(
            onPressed: () {
              if (emailController.text.contains('@')) {
                Navigator.pop(ctx, true);
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4040cc)),
            child: const Text('Purchase \$9.99'),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      final email = emailController.text.trim();
      final success =
          await _devLicenseService.purchaseLicense(email: email);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(success
                ? 'Developer License activated! You can now submit metric packs.'
                : 'Purchase failed. Please try again.'),
            backgroundColor: success
                ? const Color(0xFF2a5a2a)
                : const Color(0xFF5a2a2a),
          ),
        );
        if (success) setState(() {});
      }
    }
    emailController.dispose();
  }

  Future<void> _requestCashout(BuildContext context) async {
    final result = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF1a1a3e),
        title: const Text('Request Cashout',
            style: TextStyle(color: Color(0xFFd0d0ff), fontSize: 16)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Balance: \$${_creatorBalance.toStringAsFixed(2)}',
              style: const TextStyle(
                  color: Color(0xFF60ff60), fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            const Text('Choose cashout option:',
                style: TextStyle(color: Color(0xFFa0a0c0), fontSize: 13)),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel',
                style: TextStyle(color: Color(0xFF6666aa))),
          ),
          if (_creatorBalance >= 9.99)
            TextButton(
              onPressed: () => Navigator.pop(ctx, 'free_month'),
              child: const Text('Free Month (\$9.99)',
                  style: TextStyle(color: Color(0xFF40cc40))),
            ),
          if (_creatorBalance >= 19.99)
            TextButton(
              onPressed: () => Navigator.pop(ctx, 'paypal'),
              child: const Text('PayPal (\$19.99)',
                  style: TextStyle(color: Color(0xFF6060ff))),
            ),
        ],
      ),
    );

    if (result != null && context.mounted) {
      final amount = result == 'free_month' ? 9.99 : 19.99;
      final success = await _packsService.requestCashout(
        email: _devLicenseService.licenseEmail,
        name: '',
        amount: amount,
        cashoutType: result,
      );
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(success
                ? 'Cashout requested! We\'ll process it within 48 hours.'
                : 'Cashout failed. Please try again.'),
            backgroundColor: success
                ? const Color(0xFF2a5a2a)
                : const Color(0xFF5a2a2a),
          ),
        );
        if (success) _loadCreatorBalance();
      }
    }
  }
}

class _CardContainer extends StatelessWidget {
  final Widget child;
  const _CardContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF12122a),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF2a2a5a)),
      ),
      child: child,
    );
  }
}

class _PurchaseItem {
  final String name;
  final String type;
  final IconData icon;
  const _PurchaseItem(
      {required this.name, required this.type, required this.icon});
}

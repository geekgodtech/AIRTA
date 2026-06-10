import 'package:flutter/material.dart';
import 'discord_setup_help.dart';
import 'package:provider/provider.dart';
import 'package:airta/controllers/toxicity_analyzer_controller.dart';
import 'package:airta/l10n/app_localizations.dart';
import 'package:airta/services/subscription_service.dart';
import 'package:airta/widgets/referral_screen.dart';
import 'package:airta/widgets/user_account_page.dart';
import 'package:airta/widgets/user_submitted_packs_page.dart';
import 'package:airta/services/developer_license_service.dart';
import 'package:airta/services/referral_service.dart';

class MembershipLandingPage extends StatelessWidget {
  const MembershipLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    // Try to get subscription service, default to free tier if not available
    final subscriptionService =
        context.read<SubscriptionService?>() ?? SubscriptionService();
    final isStandardMember =
        subscriptionService.activeTier == MembershipTier.standard ||
            subscriptionService.activeTier == MembershipTier.pro ||
            subscriptionService.activeTier == MembershipTier.proPlus;

    return Scaffold(
      appBar: AppBar(
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
      ),
      body: ColoredBox(
        color: colorScheme.surfaceContainerHighest,
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth >= 900;
              final cardWidth = isWide
                  ? (constraints.maxWidth - 48) / 3
                  : constraints.maxWidth;
              final tiles = _buildTierCards(
                context,
                l10n,
                colorScheme,
                isStandardMember,
                cardWidth,
              );
              final controller = context.read<ToxicityAnalyzerController>();
              final packCards = _buildPackCards(
                context,
                colorScheme,
                controller,
                cardWidth,
              );

              return SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _MembershipHero(isWide: isWide),
                    const SizedBox(height: 24),
                    // Membership tier cards
                    if (isWide)
                      IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            for (var i = 0; i < tiles.length; i++) ...[
                              if (i > 0) const SizedBox(width: 16),
                              Expanded(child: tiles[i]),
                            ],
                          ],
                        ),
                      )
                    else
                      Column(
                        children: [
                          for (var i = 0; i < tiles.length; i++) ...[
                            if (i > 0) const SizedBox(height: 16),
                            tiles[i],
                          ],
                        ],
                      ),
                    // Metric expansion packs - always show section even if all unlocked
                    const SizedBox(height: 32),
                    const _PackSectionHeader(),
                    const SizedBox(height: 16),
                    if (packCards.isNotEmpty)
                      if (isWide)
                        IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              for (var i = 0; i < packCards.length; i++) ...[
                                if (i > 0) const SizedBox(width: 16),
                                Expanded(child: packCards[i]),
                              ],
                            ],
                          ),
                        )
                      else
                        Column(
                          children: [
                            for (var i = 0; i < packCards.length; i++) ...[
                              if (i > 0) const SizedBox(height: 16),
                              packCards[i],
                            ],
                          ],
                        )
                    else
                      // Show all packs with checkmarks for owned ones
                      _buildPacksListWithCheckmarks(context, controller, l10n),
                    // Custom Metric Purchase Section
                    const SizedBox(height: 32),
                    _CustomMetricCard(
                      width: cardWidth,
                      colorScheme: colorScheme,
                    ),
                    const SizedBox(height: 24),
                    const _ComingSoonCard(),
                    // Referral Program Section
                    const SizedBox(height: 32),
                    const _ReferralProgramCard(),
                    // Developer License Section
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
              );
            },
          ),
        ),
      ),
    );
  }

  List<Widget> _buildTierCards(
    BuildContext context,
    AppLocalizations l10n,
    ColorScheme colorScheme,
    bool isStandardMember,
    double cardWidth,
  ) {
    return [
      _TierCard(
        width: cardWidth,
        icon: Icons.sms_outlined,
        title: l10n.free,
        price: '\$0',
        accentColor: colorScheme.secondary,
        benefits: [
          l10n.benefitAnalyzeSms,
          l10n.benefitReportPreview,
          l10n.benefitViewPartialReport,
          l10n.benefitLockedDetails,
        ],
        buttonLabel: l10n.currentFreeAccess,
        onPressed: null,
      ),
      _TierCard(
        width: cardWidth,
        icon: Icons.lock_open_outlined,
        title: l10n.oneTimeUnlock,
        price: '\$20',
        accentColor: colorScheme.primary,
        benefits: [
          l10n.benefitUnlockCurrentReport,
          l10n.benefitNoSubscription,
          l10n.benefitSavePrintShareThis,
          l10n.benefitBestSingleAnalysis,
        ],
        buttonLabel: l10n.unlockThisReportShort,
        onPressed: () => _completeOneTimeUnlock(context),
      ),
      _TierCard(
        width: cardWidth,
        icon: Icons.article_outlined,
        title: l10n.standard,
        price: '\$9.99/mo',
        accentColor: colorScheme.primary,
        benefits: [
          l10n.benefitFullSmsReport,
          l10n.benefitSavePrintSharePdf,
          l10n.benefitTenReports,
          l10n.benefitBestTextReview,
          l10n.benefitDateRangeFilter,
        ],
        buttonLabel: l10n.signUpStandard,
        onPressed: () => _completeStandardSignup(context),
      ),
      // Discord Addon with Technical Warning
      Column(
        children: [
          _TierCard(
            width: cardWidth,
            icon: Icons.chat_bubble_outline,
            title: l10n.discordAddon,
            price: '\$9.99/mo',
            accentColor: colorScheme.tertiary,
            benefits: [
              l10n.benefitAddToStandard,
              l10n.benefitAnalyzeDiscord,
              l10n.benefitRequiresBot,
              l10n.benefitBestGamers,
            ],
            buttonLabel: isStandardMember
                ? l10n.addDiscordAnalysis
                : l10n.requiresStandardMembership,
            onPressed: isStandardMember
                ? () => _completeDiscordAddonSignup(context)
                : null,
          ),
          // Technical warning card
          if (isStandardMember)
            Container(
              width: cardWidth,
              margin: const EdgeInsets.only(top: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.1),
                border: Border.all(color: Colors.orange.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.warning_amber_rounded, color: Colors.orange, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        'Technical Setup Required',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange.shade800,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'This feature requires you to create a Discord bot and configure it yourself. Please review the setup instructions before purchasing to ensure you are comfortable with the technical steps involved.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.orange.shade900,
                    ),
                  ),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: () => _showDiscordSetupInstructions(context),
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF5865F2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.menu_book, color: Colors.white, size: 18),
                          const SizedBox(width: 8),
                          Text(
                            'View Setup Instructions',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    ];
  }

  List<Widget> _buildPackCards(
    BuildContext context,
    ColorScheme colorScheme,
    ToxicityAnalyzerController controller,
    double cardWidth,
  ) {
    final l10n = AppLocalizations.of(context)!;
    final cards = <Widget>[];

    if (!controller.isPackGoodUnlocked) {
      cards.add(_TierCard(
        width: cardWidth,
        icon: Icons.thumb_up_alt_outlined,
        title: l10n.goodPackTitle,
        price: r'$9.99',
        accentColor: Colors.green,
        benefits: [
          l10n.goodPackBenefit1,
          l10n.goodPackBenefit2,
          l10n.goodPackBenefit3,
          l10n.goodPackBenefit4,
          l10n.goodPackBenefit5,
        ],
        buttonLabel: l10n.unlockGoodPackButton,
        onPressed: () => _purchaseMembership(
          context,
          SubscriptionService.packGoodOneTimeId,
          l10n.goodPackTitle,
          () => controller.unlockPackGood(),
          source: 'landing_page',
        ),
      ));
    }

    if (!controller.isPackBadUnlocked) {
      cards.add(_TierCard(
        width: cardWidth,
        icon: Icons.warning_amber_outlined,
        title: l10n.badPackTitle,
        price: r'$9.99',
        accentColor: Colors.orange,
        benefits: [
          l10n.badPackBenefit1,
          l10n.badPackBenefit2,
          l10n.badPackBenefit3,
          l10n.badPackBenefit4,
          l10n.badPackBenefit5,
        ],
        buttonLabel: l10n.unlockBadPackButton,
        onPressed: () => _purchaseMembership(
          context,
          SubscriptionService.packBadOneTimeId,
          l10n.badPackTitle,
          () => controller.unlockPackBad(),
          source: 'landing_page',
        ),
      ));
    }

    if (!controller.isPackUglyUnlocked) {
      cards.add(_TierCard(
        width: cardWidth,
        icon: Icons.dangerous_outlined,
        title: l10n.uglyPackTitle,
        price: r'$9.99',
        accentColor: Colors.red,
        benefits: [
          l10n.uglyPackBenefit1,
          l10n.uglyPackBenefit2,
          l10n.uglyPackBenefit3,
          l10n.uglyPackBenefit4,
          l10n.uglyPackBenefit5,
        ],
        buttonLabel: l10n.unlockUglyPackButton,
        onPressed: () => _purchaseMembership(
          context,
          SubscriptionService.packUglyOneTimeId,
          l10n.uglyPackTitle,
          () => controller.unlockPackUgly(),
          source: 'landing_page',
        ),
      ));
    }

    if (!controller.isPackNarcissistUnlocked) {
      cards.add(_TierCard(
        width: cardWidth,
        icon: Icons.face_retouching_natural,
        title: l10n.narcissistPackTitle,
        price: r'$9.99',
        accentColor: Colors.purple,
        benefits: [
          l10n.narcissistPackBenefit1,
          l10n.narcissistPackBenefit2,
          l10n.narcissistPackBenefit3,
          l10n.narcissistPackBenefit4,
          l10n.narcissistPackBenefit5,
        ],
        buttonLabel: l10n.unlockNarcissistPackButton,
        onPressed: () => _purchaseMembership(
          context,
          SubscriptionService.packNarcissistOneTimeId,
          l10n.narcissistPackTitle,
          () => controller.unlockPackNarcissist(),
          source: 'landing_page',
        ),
      ));
    }

    if (!controller.isPackSerialKillerUnlocked) {
      cards.add(_TierCard(
        width: cardWidth,
        icon: Icons.dangerous_outlined,
        title: l10n.serialKillerPackTitle,
        price: r'$4.99',
        accentColor: const Color(0xFF5C6BC0), // Light indigo - visible on dark backgrounds
        benefits: [
          l10n.serialKillerPackBenefit1,
          l10n.serialKillerPackBenefit2,
          l10n.serialKillerPackBenefit3,
          l10n.serialKillerPackBenefit4,
          l10n.serialKillerPackBenefit5,
        ],
        buttonLabel: l10n.unlockSerialKillerPackButton,
        onPressed: () => _purchaseMembership(
          context,
          SubscriptionService.packSerialKillerOneTimeId,
          l10n.serialKillerPackTitle,
          () => controller.unlockPackSerialKiller(),
          source: 'landing_page',
        ),
      ));
    }

    return cards;
  }

  Future<void> _completeOneTimeUnlock(BuildContext context) async {

    final subscriptionService = SubscriptionService();

    // Show loading
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      await subscriptionService.recordPurchaseSource(
        SubscriptionService.oneTimeUnlockId, 'landing_page');
      final success = await subscriptionService.purchaseSubscription(
        SubscriptionService.oneTimeUnlockId,
      );

      if (context.mounted) {
        final l10n = AppLocalizations.of(context)!;
        Navigator.pop(context); // Close loading dialog

        if (success) {
          context.read<ToxicityAnalyzerController>().unlockCurrentReport();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.purchaseSuccessfulUnlocked),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.of(context).pop();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.purchaseFailed),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context); // Close loading dialog
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$e'), backgroundColor: Colors.red),
        );
      }
    }
  }

  Future<void> _completeStandardSignup(BuildContext context) async {
    await _purchaseMembership(
      context,
      SubscriptionService.standardMonthlyId,
      'Standard',
      () => context.read<ToxicityAnalyzerController>().unlockPremium(),
    );
  }

  // PRO AND PRO PLUS METHODS - COMMENTED OUT FOR CURRENT LAUNCH
  // Future<void> _completeProSignup(BuildContext context) async {
  //   await _purchaseMembership(
  //     context,
  //     SubscriptionService.proMonthlyId,
  //     'Pro',
  //     () =>
  //         context.read<ToxicityAnalyzerController>().unlockConnectedAccounts(),
  //   );
  // }
  //
  // Future<void> _completeProPlusSignup(BuildContext context) async {
  //   await _purchaseMembership(
  //     context,
  //     SubscriptionService.proPlusMonthlyId,
  //     'Pro Plus',
  //     () =>
  //         context.read<ToxicityAnalyzerController>().unlockConnectedAccounts(),
  //   );
  // }

  // Show Discord setup instructions dialog
  void _showDiscordSetupInstructions(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => DiscordSetupHelp(),
    );
  }

  // DISCORD ADDON FOR STANDARD MEMBERSHIP
  Future<void> _completeDiscordAddonSignup(BuildContext context) async {
    await _purchaseMembership(
      context,
      SubscriptionService.discordAddonMonthlyId,
      'Discord Addon',
      () => context.read<ToxicityAnalyzerController>().unlockDiscordAddon(),
    );
  }

  Future<void> _purchaseMembership(
    BuildContext context,
    String productId,
    String tierName,
    VoidCallback onSuccess, {
    String source = 'landing_page',
  }) async {
    final subscriptionService = SubscriptionService();
    // Record attribution before initiating the purchase flow
    await subscriptionService.recordPurchaseSource(productId, source);

    // Show loading
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      final success = await subscriptionService.purchaseSubscription(productId);

      if (context.mounted) {
        final l10n = AppLocalizations.of(context)!;
        Navigator.pop(context); // Close loading dialog

        if (success) {
          onSuccess();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.membershipActivated),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.of(context).pop();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.purchaseFailed),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context); // Close loading dialog
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$e'), backgroundColor: Colors.red),
        );
      }
    }
  }

  /// Build a list of all packs with checkmarks for owned ones
  Widget _buildPacksListWithCheckmarks(BuildContext context, ToxicityAnalyzerController controller, AppLocalizations l10n) {
    final colorScheme = Theme.of(context).colorScheme;
    final packs = [
      ('Good Pack', controller.isPackGoodUnlocked, Icons.thumb_up_alt_outlined, Colors.green),
      ('Bad Pack', controller.isPackBadUnlocked, Icons.warning_amber_outlined, Colors.orange),
      ('Ugly Pack', controller.isPackUglyUnlocked, Icons.dangerous_outlined, Colors.red),
      ('Narcissist Pack', controller.isPackNarcissistUnlocked, Icons.face_retouching_natural, Colors.purple),
      ('Serial Killer Pack', controller.isPackSerialKillerUnlocked, Icons.dangerous_outlined, const Color(0xFF5C6BC0)),
    ];

    return Column(
      children: packs.map((pack) {
        final (name, unlocked, icon, color) = pack;
        return ListTile(
          leading: Icon(icon, color: unlocked ? color : color.withOpacity(0.3)),
          title: Text(
            name,
            style: TextStyle(
              color: unlocked ? colorScheme.onSurface : colorScheme.onSurface.withOpacity(0.5),
              decoration: unlocked ? null : TextDecoration.lineThrough,
            ),
          ),
          trailing: unlocked
            ? Icon(Icons.check_circle, color: Colors.green)
            : Icon(Icons.lock, color: Colors.grey),
        );
      }).toList(),
    );
  }
}

/// Developer License card for creators to submit metric packs
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
              '\$9.99 one-time',
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
                  '\$4.99',
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

class _MembershipHero extends StatelessWidget {
  final bool isWide;

  const _MembershipHero({required this.isWide});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Flex(
          direction: isWide ? Axis.horizontal : Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.assignment_turned_in_outlined,
              size: 84,
              color: colorScheme.primary,
            ),
            SizedBox(width: isWide ? 24 : 0, height: isWide ? 0 : 16),
            Expanded(
              flex: isWide ? 1 : 0,
              child: Column(
                crossAxisAlignment: isWide
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.becomeMemberTitle,
                    textAlign: isWide ? TextAlign.start : TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    AppLocalizations.of(context)!.becomeMemberSubtitle,
                    textAlign: isWide ? TextAlign.start : TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TierCard extends StatelessWidget {
  final double width;
  final IconData icon;
  final String title;
  final String price;
  final Color accentColor;
  final List<String> benefits;
  final String buttonLabel;
  final VoidCallback? onPressed;

  const _TierCard({
    required this.width,
    required this.icon,
    required this.title,
    required this.price,
    required this.accentColor,
    required this.benefits,
    required this.buttonLabel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: accentColor.withOpacity(0.16),
                child: Icon(icon, size: 32, color: accentColor),
              ),
              const SizedBox(height: 16),
              Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Text(
                price,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: accentColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: benefits
                      .map(
                        (benefit) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.check_circle,
                                size: 18,
                                color: accentColor,
                              ),
                              const SizedBox(width: 8),
                              Expanded(child: Text(benefit)),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: onPressed,
                child: Text(
                  buttonLabel,
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PackSectionHeader extends StatelessWidget {
  const _PackSectionHeader();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Icon(Icons.extension_outlined, color: colorScheme.primary, size: 22),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.metricExpansionPacksTitle,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                l10n.oneTimePurchasesSubtitle,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ComingSoonCard extends StatelessWidget {
  const _ComingSoonCard();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 3,
      color: colorScheme.tertiaryContainer.withOpacity(0.45),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: colorScheme.tertiary, width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: colorScheme.tertiary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.rocket_launch_outlined,
                        size: 18,
                        color: colorScheme.onTertiary,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        l10n.comingSoon,
                        style: textTheme.labelLarge?.copyWith(
                          color: colorScheme.onTertiary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              l10n.comingSoonWithNextUpdate,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _ComingSoonTier(
              icon: Icons.hub_outlined,
              title: l10n.proMembershipTier,
              accentColor: colorScheme.tertiary,
              children: [
                Text(
                  l10n.proGetsLabel,
                  style: textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(l10n.proGetsDescription),
                const SizedBox(height: 6),
                Text(
                  l10n.proPlatformsList,
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _ComingSoonTier(
              icon: Icons.workspace_premium_outlined,
              title: l10n.proPlusMembershipTier,
              accentColor: colorScheme.error,
              children: [
                Text(
                  l10n.proPlusGetsLabel,
                  style: textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(l10n.proPlusGetsDescription),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ComingSoonTier extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color accentColor;
  final List<Widget> children;

  const _ComingSoonTier({
    required this.icon,
    required this.title,
    required this.accentColor,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface.withOpacity(0.6),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: accentColor.withOpacity(0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: accentColor, size: 24),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: accentColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ...children,
        ],
      ),
    );
  }
}

class _CustomMetricCard extends StatelessWidget {
  final double width;
  final ColorScheme colorScheme;

  const _CustomMetricCard({
    required this.width,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SizedBox(
      width: width,
      child: Card(
        elevation: 3,
        color: colorScheme.secondaryContainer.withOpacity(0.6),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: colorScheme.secondary.withOpacity(0.16),
                    child: Icon(Icons.add_circle_outline, size: 32, color: colorScheme.secondary),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.customMetricsTitle,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          r'$4.99',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                l10n.purchaseCustomMetricTileDescription,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed: () => _showCustomMetricPurchase(context),
                icon: const Icon(Icons.shopping_cart),
                label: Text(l10n.purchaseCustomMetricConfirmButton),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCustomMetricPurchase(BuildContext context) {
    // Show the custom metric purchase flow
    // This would integrate with your existing CustomMetricService
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.purchaseCustomMetricConfirmTitle),
        content: Text(AppLocalizations.of(context)!.purchaseCustomMetricConfirmBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              // TODO: Implement actual purchase flow
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Custom metric purchase would start here'),
                  backgroundColor: Colors.green,
                ),
              );
            },
            child: Text(AppLocalizations.of(context)!.purchaseCustomMetricConfirmButton),
          ),
        ],
      ),
    );
  }
}

class _RestorePurchasesButton extends StatelessWidget {
  const _RestorePurchasesButton();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: OutlinedButton.icon(
        onPressed: () => _restorePurchases(context),
        icon: Icon(Icons.restore, color: colorScheme.primary),
        label: Text(l10n.restorePurchasesButton),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          side: BorderSide(color: colorScheme.primary.withOpacity(0.5)),
        ),
      ),
    );
  }

  Future<void> _restorePurchases(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    final subscriptionService = context.read<SubscriptionService>();
    final controller = context.read<ToxicityAnalyzerController>();

    // Show loading indicator
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    try {
      // Call restore purchases
      await subscriptionService.restorePurchases();

      // Sync pack unlocks with the controller
      final newlyUnlocked = await controller.syncPackUnlocksFromPrefs();

      // Close loading dialog
      Navigator.of(context).pop();

      // Show result
      if (newlyUnlocked) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.restorePurchasesSuccess),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.restorePurchasesNoneFound),
            backgroundColor: Colors.orange,
          ),
        );
      }
    } catch (e) {
      // Close loading dialog
      Navigator.of(context).pop();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.restorePurchasesError),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}


// ---------------------------------------------------------------------------
// REFERRAL PROGRAM CARD
// ---------------------------------------------------------------------------

class _ReferralProgramCard extends StatelessWidget {
  const _ReferralProgramCard();

  @override
  Widget build(BuildContext context) {
    final referralService = ReferralService();
    final credits = referralService.creditCount;
    final required = ReferralService.requiredCredits;

    return Card(
      elevation: 3,
      color: const Color(0xFF1a1a3e),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: Color(0xFF4a2a7a), width: 1.5),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const ReferralScreen()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.card_giftcard, color: Color(0xFFc080ff), size: 28),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      'Refer Friends — Get a FREE Month!',
                      style: TextStyle(
                        color: Color(0xFFd0d0ff),
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                'Refer 5 friends who download AIRTA and run their first report. '
                'You earn a free 31-day Standard membership!',
                style: TextStyle(color: Color(0xFF8888aa), fontSize: 13),
              ),
              const SizedBox(height: 16),
              // Progress bar
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: credits / required,
                  backgroundColor: const Color(0xFF1a1a3a),
                  valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF40cc40)),
                  minHeight: 8,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' /  referral credits',
                    style: const TextStyle(color: Color(0xFFa0a0c0), fontSize: 12),
                  ),
                  const Text(
                    'Tap to refer >>',
                    style: TextStyle(
                      color: Color(0xFFc080ff),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

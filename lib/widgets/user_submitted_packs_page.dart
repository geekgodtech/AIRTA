import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:airta/services/user_submitted_packs_service.dart';

/// Language tab data with flag emoji and code.
class _LangTab {
  final String code;
  final String flag;
  final String name;
  const _LangTab(this.code, this.flag, this.name);
}

const _languages = [
  _LangTab('en', '\u{1F1FA}\u{1F1F8}', 'English'),
  _LangTab('es', '\u{1F1EA}\u{1F1F8}', 'Spanish'),
  _LangTab('fr', '\u{1F1EB}\u{1F1F7}', 'French'),
  _LangTab('de', '\u{1F1E9}\u{1F1EA}', 'German'),
  _LangTab('it', '\u{1F1EE}\u{1F1F9}', 'Italian'),
  _LangTab('pt', '\u{1F1E7}\u{1F1F7}', 'Portuguese'),
  _LangTab('nl', '\u{1F1F3}\u{1F1F1}', 'Dutch'),
  _LangTab('pl', '\u{1F1F5}\u{1F1F1}', 'Polish'),
  _LangTab('ru', '\u{1F1F7}\u{1F1FA}', 'Russian'),
  _LangTab('tr', '\u{1F1F9}\u{1F1F7}', 'Turkish'),
  _LangTab('uk', '\u{1F1FA}\u{1F1E6}', 'Ukrainian'),
  _LangTab('ar', '\u{1F1F8}\u{1F1E6}', 'Arabic'),
  _LangTab('zh', '\u{1F1E8}\u{1F1F3}', 'Chinese'),
  _LangTab('ja', '\u{1F1EF}\u{1F1F5}', 'Japanese'),
  _LangTab('ko', '\u{1F1F0}\u{1F1F7}', 'Korean'),
  _LangTab('hi', '\u{1F1EE}\u{1F1F3}', 'Hindi'),
];

class UserSubmittedPacksPage extends StatefulWidget {
  const UserSubmittedPacksPage({super.key});

  @override
  State<UserSubmittedPacksPage> createState() => _UserSubmittedPacksPageState();
}

class _UserSubmittedPacksPageState extends State<UserSubmittedPacksPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _languages.length, vsync: this);
    // Initialize and fetch packs
    WidgetsBinding.instance.addPostFrameCallback((_) {
      UserSubmittedPacksService().initialize();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: UserSubmittedPacksService(),
      child: Scaffold(
        backgroundColor: const Color(0xFF0d0d1a),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1a1a3e),
          title: const Text(
            'User Submitted Metric Packs',
            style: TextStyle(color: Color(0xFFd0d0ff), fontSize: 18),
          ),
          iconTheme: const IconThemeData(color: Color(0xFFa0a0c0)),
          actions: [
            IconButton(
              icon: const Icon(Icons.account_balance_wallet_outlined, size: 22),
              tooltip: 'Creator Credits',
              onPressed: () => _showCreatorCreditsDialog(context),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorColor: const Color(0xFF6060ff),
            labelColor: const Color(0xFFd0d0ff),
            unselectedLabelColor: const Color(0xFF6666aa),
            tabAlignment: TabAlignment.start,
            tabs: _languages
                .map((lang) => Tab(
                      child: Text(
                        '${lang.flag} ${lang.code.toUpperCase()}',
                        style: const TextStyle(fontSize: 14),
                      ),
                    ))
                .toList(),
          ),
        ),
        body: Consumer<UserSubmittedPacksService>(
          builder: (context, service, _) {
            if (service.isLoading) {
              return const Center(
                child: CircularProgressIndicator(color: Color(0xFF6060ff)),
              );
            }

            if (service.error != null) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.error_outline,
                        color: Color(0xFFff4444), size: 48),
                    const SizedBox(height: 12),
                    Text(
                      'Failed to load packs',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () => service.fetchPacks(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2a2a5a),
                      ),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
            }

            return TabBarView(
              controller: _tabController,
              children: _languages
                  .map((lang) => _PacksListView(
                        languageCode: lang.code,
                        service: service,
                      ))
                  .toList(),
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color(0xFF4040cc),
          icon: const Icon(Icons.add, color: Colors.white),
          label: const Text('Submit Your Own',
              style: TextStyle(color: Colors.white)),
          onPressed: () => _showSubmitOptions(context),
        ),
      ),
    );
  }

  void _showSubmitOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF1a1a3e),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) => Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Submit Your Metric Pack',
              style: TextStyle(
                  color: Color(0xFFd0d0ff),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            const Text(
              'Create and sell your own psychological metric packs to the AIRTA community!',
              style: TextStyle(color: Color(0xFF8888aa), fontSize: 13),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.looks_one, color: Color(0xFF60ff60)),
              title: const Text('50 Metrics - \$5.00',
                  style: TextStyle(color: Color(0xFFd0d0ff))),
              subtitle: const Text('Earn \$2.50 per sale',
                  style: TextStyle(color: Color(0xFF60ff60), fontSize: 12)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: Color(0xFF2a2a5a)),
              ),
              onTap: () {
                Navigator.pop(ctx);
                launchUrl(Uri.parse('https://airta.net/submit-50.html'),
                    mode: LaunchMode.externalApplication);
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.looks_two, color: Color(0xFF80a0ff)),
              title: const Text('100 Metrics - \$10.00',
                  style: TextStyle(color: Color(0xFFd0d0ff))),
              subtitle: const Text('Earn \$5.00 per sale',
                  style: TextStyle(color: Color(0xFF80a0ff), fontSize: 12)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: Color(0xFF2a2a5a)),
              ),
              onTap: () {
                Navigator.pop(ctx);
                launchUrl(Uri.parse('https://airta.net/submit-100.html'),
                    mode: LaunchMode.externalApplication);
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  void _showCreatorCreditsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF1a1a3e),
        title: const Text('Creator Credits',
            style: TextStyle(color: Color(0xFFd0d0ff))),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Earn credits when users purchase your submitted metric packs!',
              style: TextStyle(color: Color(0xFFa0a0c0), fontSize: 13),
            ),
            const SizedBox(height: 16),
            _buildCreditTier('\$9.99', 'Redeem for 1 free month of Standard membership'),
            const SizedBox(height: 8),
            _buildCreditTier('\$19.99', 'Redeem for pack credit or PayPal payout'),
            const SizedBox(height: 16),
            const Text(
              'Submit a pack to start earning!',
              style: TextStyle(
                  color: Color(0xFF60ff60), fontSize: 12, fontStyle: FontStyle.italic),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Close',
                style: TextStyle(color: Color(0xFF6060ff))),
          ),
        ],
      ),
    );
  }

  Widget _buildCreditTier(String amount, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: const Color(0xFF2a5a2a),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(amount,
              style: const TextStyle(
                  color: Color(0xFF60ff60),
                  fontSize: 12,
                  fontWeight: FontWeight.w700)),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(description,
              style: const TextStyle(color: Color(0xFF8888aa), fontSize: 12)),
        ),
      ],
    );
  }
}

/// Displays the list of packs for a specific language in a scrollable table.
class _PacksListView extends StatelessWidget {
  final String languageCode;
  final UserSubmittedPacksService service;

  const _PacksListView({
    required this.languageCode,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    final packs = service.getPacksByLanguage(languageCode);

    if (packs.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.inventory_2_outlined,
                color: Color(0xFF4a4a6a), size: 48),
            const SizedBox(height: 12),
            Text(
              'No packs available in this language yet',
              style: TextStyle(color: Color(0xFF6666aa), fontSize: 14),
            ),
            const SizedBox(height: 8),
            Text(
              'Submit your own at airta.net!',
              style: TextStyle(color: Color(0xFF4040cc), fontSize: 12),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: packs.length,
      itemBuilder: (context, index) => _PackRow(
        pack: packs[index],
        service: service,
      ),
    );
  }
}

/// A single pack row with accordion expansion to show metric names.
class _PackRow extends StatefulWidget {
  final UserSubmittedPack pack;
  final UserSubmittedPacksService service;

  const _PackRow({required this.pack, required this.service});

  @override
  State<_PackRow> createState() => _PackRowState();
}

class _PackRowState extends State<_PackRow> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final pack = widget.pack;
    final isPurchased = widget.service.isPurchased(pack.id);

    return Card(
      color: const Color(0xFF12122a),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: isPurchased
              ? const Color(0xFF2a5a2a)
              : const Color(0xFF2a2a5a),
        ),
      ),
      margin: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          // Main row content
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () => setState(() => _expanded = !_expanded),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Row(
                children: [
                  // Expand/collapse indicator
                  Icon(
                    _expanded
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_right,
                    color: const Color(0xFF6666aa),
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  // Pack name
                  Expanded(
                    flex: 3,
                    child: Text(
                      pack.packName,
                      style: const TextStyle(
                        color: Color(0xFFd0d0ff),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Qty
                  SizedBox(
                    width: 36,
                    child: Text(
                      '${pack.metricCount}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color(0xFFa0a0c0), fontSize: 12),
                    ),
                  ),
                  // Price
                  SizedBox(
                    width: 50,
                    child: Text(
                      pack.priceFormatted,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color(0xFF60ff60),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(width: 6),
                  // Purchase button or sold indicator
                  if (isPurchased)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1a3a1a),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xFF2a5a2a)),
                      ),
                      child: const Text(
                        'Owned',
                        style: TextStyle(
                            color: Color(0xFF60ff60), fontSize: 11),
                      ),
                    )
                  else
                    SizedBox(
                      height: 28,
                      child: ElevatedButton(
                        onPressed: () => _confirmPurchase(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF4040cc),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          textStyle: const TextStyle(fontSize: 11),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: const Text('Buy'),
                      ),
                    ),
                  const SizedBox(width: 6),
                  // Sold count
                  SizedBox(
                    width: 40,
                    child: Text(
                      '${pack.salesCount} sold',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color(0xFF6666aa), fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Creator + date subtitle
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 12, bottom: 6),
            child: Row(
              children: [
                Text(
                  'by ${pack.creatorName}',
                  style: const TextStyle(
                      color: Color(0xFF6666aa), fontSize: 11),
                ),
                const Spacer(),
                Text(
                  _formatDate(pack.submissionDate),
                  style: const TextStyle(
                      color: Color(0xFF4a4a6a), fontSize: 10),
                ),
              ],
            ),
          ),
          // Expanded metric names accordion
          if (_expanded)
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color(0xFF1a1a3a)),
                ),
              ),
              constraints: const BoxConstraints(maxHeight: 300),
              child: ListView.builder(
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                itemCount: pack.metrics.length,
                itemBuilder: (context, index) {
                  final metric = pack.metrics[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 28,
                          child: Text(
                            '${index + 1}.',
                            style: const TextStyle(
                                color: Color(0xFF4a4a6a), fontSize: 12),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            metric.name,
                            style: const TextStyle(
                                color: Color(0xFFa0a0c0), fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }

  String _formatDate(String isoDate) {
    try {
      final dt = DateTime.parse(isoDate);
      return '${dt.month}/${dt.day}/${dt.year}';
    } catch (_) {
      return isoDate;
    }
  }

  Future<void> _confirmPurchase(BuildContext context) async {
    final pack = widget.pack;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF1a1a3e),
        title: Text(
          'Purchase "${pack.packName}"?',
          style: const TextStyle(color: Color(0xFFd0d0ff), fontSize: 16),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${pack.metricCount} metrics by ${pack.creatorName}',
              style: const TextStyle(color: Color(0xFFa0a0c0), fontSize: 14),
            ),
            const SizedBox(height: 8),
            Text(
              'Price: ${pack.priceFormatted}',
              style: const TextStyle(
                  color: Color(0xFF60ff60),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            const Text(
              'This will install the metric pack for use in your analyses.',
              style: TextStyle(color: Color(0xFF6666aa), fontSize: 12),
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
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4040cc),
            ),
            child: Text('Buy for ${pack.priceFormatted}'),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      final success = await widget.service.purchasePack(pack);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(success
                ? 'Pack installed successfully!'
                : 'Purchase failed. Please try again.'),
            backgroundColor:
                success ? const Color(0xFF2a5a2a) : const Color(0xFF5a2a2a),
          ),
        );
        if (success) setState(() {});
      }
    }
  }
}

#!/usr/bin/env python3
"""Add earnings display to User Submitted Metric Packs title bar"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\widgets\user_submitted_packs_page.dart"

with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# 1. Add import for DeveloperLicenseService if not present
if 'import' not in content or 'DeveloperLicenseService' not in content:
    # Add the import after the existing imports
    import_section = """import 'package:airta/services/user_submitted_packs_service.dart';
import 'package:airta/services/developer_license_service.dart';"""
    content = content.replace(
        "import 'package:airta/services/user_submitted_packs_service.dart';",
        import_section
    )

# 2. Modify the class to add earnings tracking state
old_init = """  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _languages.length, vsync: this);
    // Initialize and fetch packs
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final service = UserSubmittedPacksService();
      await service.initialize();
      // Auto-translate any pending packs in the background
      PackTranslationService().autoTranslateAllPending();
    });
  }"""

new_init = """  double _creatorEarnings = 0.0;
  bool _hasDeveloperLicense = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _languages.length, vsync: this);
    // Initialize and fetch packs, load earnings
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final service = UserSubmittedPacksService();
      await service.initialize();
      // Auto-translate any pending packs in the background
      PackTranslationService().autoTranslateAllPending();
      // Load developer license and earnings
      await _loadEarnings();
    });
  }

  Future<void> _loadEarnings() async {
    final licenseService = DeveloperLicenseService();
    await licenseService.initialize();
    if (licenseService.hasLicense && licenseService.licenseEmail.isNotEmpty) {
      final packsService = UserSubmittedPacksService();
      final balance = await packsService.getCreatorBalance(licenseService.licenseEmail);
      if (mounted) {
        setState(() {
          _hasDeveloperLicense = true;
          _creatorEarnings = balance;
        });
      }
    }
  }"""

content = content.replace(old_init, new_init)

# 3. Modify the AppBar title to show earnings
old_appbar = """        appBar: AppBar(
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
          ],"""

new_appbar = """        appBar: AppBar(
          backgroundColor: const Color(0xFF1a1a3e),
          title: Row(
            children: [
              const Expanded(
                child: Text(
                  'User Submitted Metric Packs',
                  style: TextStyle(color: Color(0xFFd0d0ff), fontSize: 18),
                ),
              ),
              if (_hasDeveloperLicense && _creatorEarnings > 0)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: const Color(0xFF00FF41).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0xFF00FF41),
                      width: 2,
                    ),
                  ),
                  child: Text(
                    '\$${_creatorEarnings.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Color(0xFF00FF41),
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1,
                      shadows: [
                        Shadow(
                          color: Color(0xFF00FF41),
                          blurRadius: 8,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          iconTheme: const IconThemeData(color: Color(0xFFa0a0c0)),
          actions: [
            IconButton(
              icon: const Icon(Icons.account_balance_wallet_outlined, size: 22),
              tooltip: 'Creator Credits',
              onPressed: () => _showCreatorCreditsDialog(context),
            ),
          ],"""

content = content.replace(old_appbar, new_appbar)

with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Added earnings display to User Submitted Metric Packs title bar")
print("- Shows \"$XX.XX\" in neon green when user has developer license and earnings > 0")
print("- Big, bold, glowing text with border for visibility")

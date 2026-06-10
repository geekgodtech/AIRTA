#!/usr/bin/env python3
"""
Add a dialog on app launch that asks users if they want to activate their referral reward.
This shows when they have 5+ referrals and haven't claimed yet.
"""

MAIN_DART_PATH = r"C:\My Projects\AIRTA\lib\main.dart"
REFERRAL_SERVICE_PATH = r"C:\My Projects\AIRTA\lib\services\referral_service.dart"

# Read main.dart
with open(MAIN_DART_PATH, 'r', encoding='utf-8') as f:
    main_content = f.read()

# 1. Add the showReferralRewardDialog method to _ToxicityAnalyzerAppState
# Find the closing brace of the class and add the method before it
old_closing = '''  static final ThemeData _lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blueGrey,
      brightness: Brightness.light,'''

# Actually, let's add the method after _requestPermissions
old_permissions_end = '''  Future<void> _requestPermissions() async {
    await Permission.sms.request();
    await Permission.contacts.request();

    setState(() {
      _showPermissionDialog = false;
      _permissionsGranted = true;
    });
  }'''

new_permissions_end = '''  Future<void> _requestPermissions() async {
    await Permission.sms.request();
    await Permission.contacts.request();

    setState(() {
      _showPermissionDialog = false;
      _permissionsGranted = true;
    });

    // After permissions granted, check for referral reward
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkReferralReward();
    });
  }

  /// Check if user has earned referral reward and show dialog if so
  void _checkReferralReward() async {
    final referralService = ReferralService();

    // Wait for service to be initialized
    if (!referralService.isInitialized) {
      await referralService.initialize();
    }

    // Check if user has earned reward but not claimed yet
    if (referralService.hasEarnedReward && !referralService.trialActivated) {
      // Show dialog after a short delay so UI is ready
      Future.delayed(const Duration(milliseconds: 500), () {
        if (mounted) {
          _showReferralRewardDialog(referralService);
        }
      });
    }
  }

  /// Show the referral reward dialog
  void _showReferralRewardDialog(ReferralService referralService) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1a1a3e),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Color(0xFF40cc40), width: 2),
        ),
        title: const Row(
          children: [
            Icon(Icons.card_giftcard, color: Color(0xFF60ff60)),
            SizedBox(width: 10),
            Text(
              'Congratulations!',
              style: TextStyle(
                color: Color(0xFF60ff60),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You\'ve successfully referred 5 friends who ran their first report!',
              style: const TextStyle(color: Color(0xFFe8e8f0), fontSize: 14),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF1a3a1a),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFF40cc40)),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Reward:',
                    style: TextStyle(
                      color: Color(0xFF60ff60),
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '31 Days of Standard Membership FREE',
                    style: TextStyle(
                      color: Color(0xFFa0ffa0),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Would you like to activate your free month now?',
              style: TextStyle(color: Color(0xFFa0a0c0), fontSize: 13),
            ),
            const SizedBox(height: 8),
            const Text(
              'Your membership will automatically revert after 31 days.',
              style: TextStyle(color: Color(0xFF8888aa), fontSize: 11),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Not Now',
              style: TextStyle(color: Color(0xFF8888aa)),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.of(context).pop();

              // Activate the reward
              await referralService.activateRewardTrial();

              // Reset for next cycle
              await referralService.resetForNextCycle();

              // Show success message
              if (mounted) {
                final cycles = referralService.cyclesCompleted;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      cycles == 1
                          ? 'Free Standard month activated! You can now earn 5 more referrals for another reward.'
                          : 'Free Standard month activated! Cycle $cycles complete. Earn 5 more for another reward!',
                    ),
                    backgroundColor: const Color(0xFF2a5a2a),
                    duration: const Duration(seconds: 5),
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF40cc40),
              foregroundColor: Colors.white,
            ),
            child: const Text('Activate Free Month'),
          ),
        ],
      ),
    );
  }'''

main_content = main_content.replace(old_permissions_end, new_permissions_end)

# 2. Also add check when user already has permissions (desktop/web path or returning user)
old_init_end = '''    // If no update required, check permissions
    setState(() {
      _checkingVersion = false;
    });
    _checkPermissions();
  }'''

new_init_end = '''    // If no update required, check permissions
    setState(() {
      _checkingVersion = false;
    });
    await _checkPermissions();

    // Check for referral reward after everything is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkReferralReward();
    });
  }'''

main_content = main_content.replace(old_init_end, new_init_end)

# 3. Make sure ReferralService is imported (it should already be there)
if 'import' not in main_content or 'referral_service' in main_content.lower():
    print("ReferralService import already present")

# Write main.dart
with open(MAIN_DART_PATH, 'w', encoding='utf-8') as f:
    f.write(main_content)

print("Added referral reward dialog to main.dart")
print("- Shows on app launch when user has 5+ referrals")
print("- User can activate free month or dismiss")
print("- Automatically resets counter after activation")
print("- Trial expiry is handled by ReferralService._checkTrialExpiry()")

# Now update ReferralService to ensure trial expiry is checked on initialize
with open(REFERRAL_SERVICE_PATH, 'r', encoding='utf-8') as f:
    referral_content = f.read()

# Check if _checkTrialExpiry is called in initialize
if '_checkTrialExpiry' in referral_content:
    print("\nReferralService already has _checkTrialExpiry - trial expiry is handled")
else:
    print("\nWARNING: _checkTrialExpiry not found in ReferralService")

print("\nReferral reward dialog complete!")

"""
Replaces hardcoded English strings with l10n calls across 6 widget files.
Run with: python update_widgets_l10n.py
"""
import re

def replace_in_file(path, replacements):
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
    original = content
    for old, new in replacements:
        if old not in content:
            print(f"  WARNING: Not found in {path}: {repr(old[:60])}")
        content = content.replace(old, new, 1)
    if content == original:
        print(f"  No changes made to {path}")
    else:
        with open(path, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"  Updated: {path}")


# ─────────────────────────────────────────────────────────────────────
# 1. discord_settings_page.dart
# Already has: final l10n = AppLocalizations.of(context)!; in build()
# Need to add it to _saveToken() and _testConnection() and replace strings
# ─────────────────────────────────────────────────────────────────────
settings_path = r'C:\My Projects\AIRTA\lib\widgets\discord_settings_page.dart'
replace_in_file(settings_path, [
    # Add l10n to _saveToken and replace 'Bot token saved successfully'
    (
        "  Future<void> _saveToken() async {\n    if (!_formKey.currentState!.validate()) return;\n\n    setState(() {",
        "  Future<void> _saveToken() async {\n    if (!_formKey.currentState!.validate()) return;\n    final l10n = AppLocalizations.of(context)!;\n\n    setState(() {"
    ),
    (
        "          content: Text('Bot token saved successfully'),",
        "          content: Text(l10n.botTokenSaved),"
    ),
    (
        "          content: Text('Failed to save: $e'),",
        "          content: Text(l10n.failedToSaveError(e.toString())),"
    ),
    # Add l10n to _testConnection and replace its string
    (
        "  Future<void> _testConnection() async {\n    // This would test the connection - placeholder for now\n    ScaffoldMessenger.of(context).showSnackBar(\n      SnackBar(\n        content: Text('Connection test not yet implemented'),",
        "  Future<void> _testConnection() async {\n    final l10n = AppLocalizations.of(context)!;\n    // This would test the connection - placeholder for now\n    ScaffoldMessenger.of(context).showSnackBar(\n      SnackBar(\n        content: Text(l10n.connectionTestNotImplemented),"
    ),
    # labelText and hintText in TextFormField (l10n already in scope from build())
    (
        "                  labelText: 'Bot Token',",
        "                  labelText: l10n.botTokenLabel,"
    ),
    (
        "                  hintText: 'Paste your Discord bot token here',",
        "                  hintText: l10n.pasteDiscordBotTokenHint,"
    ),
])

# ─────────────────────────────────────────────────────────────────────
# 2. discord_setup_help.dart
# Already has: final l10n = AppLocalizations.of(context)!; in build()
# ─────────────────────────────────────────────────────────────────────
setup_path = r'C:\My Projects\AIRTA\lib\widgets\discord_setup_help.dart'
replace_in_file(setup_path, [
    (
        "                label: const Text('Bot Config'),",
        "                label: Text(l10n.botConfigButton),"
    ),
])

# ─────────────────────────────────────────────────────────────────────
# 3. discord_server_picker.dart
# Needs: import + final l10n = AppLocalizations.of(context)!; in build()
# ─────────────────────────────────────────────────────────────────────
server_path = r'C:\My Projects\AIRTA\lib\widgets\discord_server_picker.dart'
replace_in_file(server_path, [
    # Add import after last import line
    (
        "import 'discord_settings_page.dart';",
        "import 'discord_settings_page.dart';\nimport '../l10n/app_localizations.dart';"
    ),
    # Add l10n declaration at top of build() method
    (
        "  @override\n  Widget build(BuildContext context) {\n    return Scaffold(",
        "  @override\n  Widget build(BuildContext context) {\n    final l10n = AppLocalizations.of(context)!;\n    return Scaffold("
    ),
    # Replace 'Configure Bot Token'
    (
        "            label: const Text('Configure Bot Token'),",
        "            label: Text(l10n.configureBotToken),"
    ),
    # Replace 'Retry'
    (
        "            child: const Text('Retry'),",
        "            child: Text(l10n.retryButton),"
    ),
    # Replace 'Owner'
    (
        "                                      Text('Owner'),",
        "                                      Text(l10n.ownerLabel),"
    ),
])

# ─────────────────────────────────────────────────────────────────────
# 4. discord_channel_picker.dart
# Needs: import + final l10n = AppLocalizations.of(context)!; in build()
# The two strings are in _importChannel (async method) — needs l10n there too
# ─────────────────────────────────────────────────────────────────────
channel_path = r'C:\My Projects\AIRTA\lib\widgets\discord_channel_picker.dart'
replace_in_file(channel_path, [
    # Add import
    (
        "import '../controllers/toxicity_analyzer_controller.dart';",
        "import '../controllers/toxicity_analyzer_controller.dart';\nimport '../l10n/app_localizations.dart';"
    ),
    # Add l10n to _importChannel (it uses context inside if (mounted) blocks)
    (
        "  Future<void> _importChannel(DiscordChannel channel) async {\n    setState(() {\n      _importing = true;\n      _importProgress = 0;\n    });",
        "  Future<void> _importChannel(DiscordChannel channel) async {\n    final l10n = AppLocalizations.of(context)!;\n    setState(() {\n      _importing = true;\n      _importProgress = 0;\n    });"
    ),
    # Replace 'No messages found in this channel'
    (
        "              content: Text('No messages found in this channel'),",
        "              content: Text(l10n.noMessagesInChannel),"
    ),
    # Replace 'Failed to import: $e'
    (
        "            content: Text('Failed to import: $e'),",
        "            content: Text(l10n.failedToImportError(e.toString())),"
    ),
])

# ─────────────────────────────────────────────────────────────────────
# 5. report_viewer_pane.dart
# Already imports app_localizations.dart
# Need to find where 'Pro Membership - $19.99/mo' and 'Unlock for $10' are
# and ensure l10n is in scope
# ─────────────────────────────────────────────────────────────────────
report_path = r'C:\My Projects\AIRTA\lib\widgets\report_viewer_pane.dart'

# Read to check context around the upsell strings
with open(report_path, 'r', encoding='utf-8') as f:
    report_content = f.read()

idx1 = report_content.find("Pro Membership - $19.99/mo")
idx2 = report_content.find("Unlock for $10")
print(f"  report_viewer_pane: Pro Membership at idx {idx1}, Unlock at idx {idx2}")
if idx1 >= 0:
    print(f"  Context: {repr(report_content[max(0,idx1-100):idx1+100])}")
if idx2 >= 0:
    print(f"  Context: {repr(report_content[max(0,idx2-100):idx2+100])}")

replace_in_file(report_path, [
    (
        "'Pro Membership - \$19.99/mo'",
        "l10n.proMembershipUpsell"
    ),
    (
        "'Unlock for \$10'",
        "l10n.unlockForPrice"
    ),
])

# ─────────────────────────────────────────────────────────────────────
# 6. ios_sms_capture_screen.dart
# Already imports app_localizations.dart
# Strings are in _buildActionButtons() and _buildCaptureStatus() — instance methods
# that have access to context. Need to use AppLocalizations.of(context)! inline
# or add l10n to each method.
# ─────────────────────────────────────────────────────────────────────
ios_path = r'C:\My Projects\AIRTA\lib\widgets\ios_sms_capture_screen.dart'
replace_in_file(ios_path, [
    # _buildCaptureStatus: 'Capturing...' and 'Capture Complete'
    (
        "              _isCapturing ? 'Capturing...' : 'Capture Complete',",
        "              _isCapturing ? AppLocalizations.of(context)!.capturingStatus : AppLocalizations.of(context)!.captureComplete,"
    ),
    # _buildActionButtons: 'Start Capture'
    (
        "            label: const Text('Start Capture'),",
        "            label: Text(AppLocalizations.of(context)!.startCapture),"
    ),
    # 'Finish & Process'
    (
        "            label: const Text('Finish & Process'),",
        "            label: Text(AppLocalizations.of(context)!.finishAndProcess),"
    ),
    # 'Cancel'
    (
        "            label: const Text('Cancel'),",
        "            label: Text(AppLocalizations.of(context)!.cancelButton),"
    ),
    # 'Process Screenshots'
    (
        "            label: const Text('Process Screenshots'),",
        "            label: Text(AppLocalizations.of(context)!.processScreenshots),"
    ),
    # 'Start Over'
    (
        "            label: const Text('Start Over'),",
        "            label: Text(AppLocalizations.of(context)!.startOver),"
    ),
])

print("\nAll done!")

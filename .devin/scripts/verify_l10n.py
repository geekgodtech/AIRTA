files = [
    r'C:\My Projects\AIRTA\lib\widgets\discord_settings_page.dart',
    r'C:\My Projects\AIRTA\lib\widgets\discord_setup_help.dart',
    r'C:\My Projects\AIRTA\lib\widgets\discord_server_picker.dart',
    r'C:\My Projects\AIRTA\lib\widgets\discord_channel_picker.dart',
    r'C:\My Projects\AIRTA\lib\widgets\report_viewer_pane.dart',
    r'C:\My Projects\AIRTA\lib\widgets\ios_sms_capture_screen.dart',
]

targets = [
    'Bot token saved successfully',
    "Failed to save: $e",
    'Connection test not yet implemented',
    'Paste your Discord bot token here',
    "labelText: 'Bot Token'",
    "const Text('Bot Config')",
    "const Text('Configure Bot Token')",
    "const Text('Retry')",
    "Text('Owner')",
    'No messages found in this channel',
    "Failed to import: $e",
    "Pro Membership - $19.99/mo",
    "Unlock for $10",
    "const Text('Start Capture')",
    "const Text('Finish & Process')",
    "const Text('Cancel')",
    "const Text('Process Screenshots')",
    "const Text('Start Over')",
    "'Capturing...'",
    "'Capture Complete'",
]

for path in files:
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
    found = [t for t in targets if t in content]
    fname = path.split('\\')[-1]
    if found:
        print(f'REMAINING in {fname}: {found}')
    else:
        print(f'CLEAN: {fname}')

# Also confirm l10n keys are present
print()
print("Checking l10n key usage:")
checks = {
    r'C:\My Projects\AIRTA\lib\widgets\discord_settings_page.dart': [
        'l10n.botTokenSaved', 'l10n.failedToSaveError', 'l10n.connectionTestNotImplemented',
        'l10n.pasteDiscordBotTokenHint', 'l10n.botTokenLabel',
    ],
    r'C:\My Projects\AIRTA\lib\widgets\discord_setup_help.dart': ['l10n.botConfigButton'],
    r'C:\My Projects\AIRTA\lib\widgets\discord_server_picker.dart': [
        'l10n.configureBotToken', 'l10n.retryButton', 'l10n.ownerLabel',
        'AppLocalizations', 'final l10n',
    ],
    r'C:\My Projects\AIRTA\lib\widgets\discord_channel_picker.dart': [
        'l10n.noMessagesInChannel', 'l10n.failedToImportError',
        'AppLocalizations', 'final l10n',
    ],
    r'C:\My Projects\AIRTA\lib\widgets\report_viewer_pane.dart': [
        'l10n.proMembershipUpsell', 'l10n.unlockForPrice',
    ],
    r'C:\My Projects\AIRTA\lib\widgets\ios_sms_capture_screen.dart': [
        'capturingStatus', 'captureComplete', 'startCapture', 'finishAndProcess',
        'cancelButton', 'processScreenshots', 'startOver',
    ],
}
for path, keys in checks.items():
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
    fname = path.split('\\')[-1]
    for key in keys:
        if key in content:
            print(f'  OK  {fname}: {key}')
        else:
            print(f'  MISSING  {fname}: {key}')

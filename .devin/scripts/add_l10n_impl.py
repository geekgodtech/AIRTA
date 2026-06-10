import sys

path = r'C:\My Projects\AIRTA\lib\l10n\app_localizations_en.dart'
with open(path, 'r', encoding='utf-8') as f:
    content = f.read()

additions = (
    '\n'
    '  @override\n'
    "  String get botTokenSaved => 'Bot token saved successfully';\n"
    '\n'
    '  @override\n'
    '  String failedToSaveError(String error) => \'Failed to save: $error\';\n'
    '\n'
    '  @override\n'
    "  String get connectionTestNotImplemented => 'Connection test not yet implemented';\n"
    '\n'
    '  @override\n'
    "  String get pasteDiscordBotTokenHint => 'Paste your Discord bot token here';\n"
    '\n'
    '  @override\n'
    "  String get botTokenLabel => 'Bot Token';\n"
    '\n'
    '  @override\n'
    "  String get botConfigButton => 'Bot Config';\n"
    '\n'
    '  @override\n'
    "  String get configureBotToken => 'Configure Bot Token';\n"
    '\n'
    '  @override\n'
    "  String get retryButton => 'Retry';\n"
    '\n'
    '  @override\n'
    "  String get ownerLabel => 'Owner';\n"
    '\n'
    '  @override\n'
    "  String get noMessagesInChannel => 'No messages found in this channel';\n"
    '\n'
    '  @override\n'
    '  String failedToImportError(String error) => \'Failed to import: $error\';\n'
    '\n'
    '  @override\n'
    r"  String get proMembershipUpsell => 'Pro Membership - \$19.99/mo';"
    '\n'
    '\n'
    '  @override\n'
    r"  String get unlockForPrice => 'Unlock for \$10';"
    '\n'
    '\n'
    '  @override\n'
    "  String get startCapture => 'Start Capture';\n"
    '\n'
    '  @override\n'
    "  String get finishAndProcess => 'Finish & Process';\n"
    '\n'
    '  @override\n'
    "  String get cancelButton => 'Cancel';\n"
    '\n'
    '  @override\n'
    "  String get processScreenshots => 'Process Screenshots';\n"
    '\n'
    '  @override\n'
    "  String get startOver => 'Start Over';\n"
    '\n'
    '  @override\n'
    "  String get capturingStatus => 'Capturing...';\n"
    '\n'
    '  @override\n'
    "  String get captureComplete => 'Capture Complete';\n"
    '}\n'
)

if content.endswith('}\n'):
    new_content = content[:-2] + additions
elif content.endswith('}'):
    new_content = content[:-1] + additions
else:
    print("Unexpected ending:", repr(content[-20:]))
    sys.exit(1)

with open(path, 'w', encoding='utf-8') as f:
    f.write(new_content)
print('Done. New length:', len(new_content))

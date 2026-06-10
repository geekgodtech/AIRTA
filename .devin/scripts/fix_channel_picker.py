path = r'C:\My Projects\AIRTA\lib\widgets\discord_channel_picker.dart'
with open(path, 'r', encoding='utf-8') as f:
    content = f.read()

# Add l10n to build()
old_build = (
    '  @override\n'
    '  Widget build(BuildContext context) {\n'
    '    return Scaffold('
)
new_build = (
    '  @override\n'
    '  Widget build(BuildContext context) {\n'
    '    final l10n = AppLocalizations.of(context)!;\n'
    '    return Scaffold('
)

# Fix Retry
old_retry = "                          child: const Text('Retry'),"
new_retry = "                          child: Text(l10n.retryButton),"

if old_build in content:
    content = content.replace(old_build, new_build, 1)
    print('Added l10n to build()')
else:
    print('WARNING: build() pattern not found')

if old_retry in content:
    content = content.replace(old_retry, new_retry, 1)
    print('Replaced Retry')
else:
    print('WARNING: Retry pattern not found')

with open(path, 'w', encoding='utf-8') as f:
    f.write(content)
print('Done.')

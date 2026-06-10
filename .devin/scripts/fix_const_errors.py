"""
Fixes 'invalid_constant' and 'undefined l10n' errors found by flutter analyze.
"""

# ─────────────────────────────────────────────────────────────────────
# 1. discord_channel_picker.dart — remove `const` from SnackBar that contains l10n
# ─────────────────────────────────────────────────────────────────────
channel_path = r'C:\My Projects\AIRTA\lib\widgets\discord_channel_picker.dart'
with open(channel_path, 'r', encoding='utf-8') as f:
    content = f.read()

old = (
    '          ScaffoldMessenger.of(context).showSnackBar(\n'
    '            const SnackBar(\n'
    '              content: Text(l10n.noMessagesInChannel),\n'
    '              backgroundColor: Colors.orange,\n'
    '            ),\n'
    '          );'
)
new = (
    '          ScaffoldMessenger.of(context).showSnackBar(\n'
    '            SnackBar(\n'
    '              content: Text(l10n.noMessagesInChannel),\n'
    '              backgroundColor: Colors.orange,\n'
    '            ),\n'
    '          );'
)
if old in content:
    content = content.replace(old, new, 1)
    print('Fixed: discord_channel_picker const SnackBar')
else:
    print('WARNING: discord_channel_picker SnackBar pattern not found')

with open(channel_path, 'w', encoding='utf-8') as f:
    f.write(content)

# ─────────────────────────────────────────────────────────────────────
# 2. discord_server_picker.dart — remove `const` from Row that contains l10n
# ─────────────────────────────────────────────────────────────────────
server_path = r'C:\My Projects\AIRTA\lib\widgets\discord_server_picker.dart'
with open(server_path, 'r', encoding='utf-8') as f:
    content = f.read()

old = (
    '                            subtitle: guild.owner\n'
    '                                ? const Row(\n'
    '                                    children: [\n'
    '                                      Icon(Icons.star, size: 16, color: Colors.amber),\n'
    '                                      SizedBox(width: 4),\n'
    '                                      Text(l10n.ownerLabel),\n'
    '                                    ],\n'
    '                                  )\n'
    '                                : null,'
)
new = (
    '                            subtitle: guild.owner\n'
    '                                ? Row(\n'
    '                                    children: [\n'
    '                                      const Icon(Icons.star, size: 16, color: Colors.amber),\n'
    '                                      const SizedBox(width: 4),\n'
    '                                      Text(l10n.ownerLabel),\n'
    '                                    ],\n'
    '                                  )\n'
    '                                : null,'
)
if old in content:
    content = content.replace(old, new, 1)
    print('Fixed: discord_server_picker const Row')
else:
    print('WARNING: discord_server_picker Row pattern not found')

with open(server_path, 'w', encoding='utf-8') as f:
    f.write(content)

# ─────────────────────────────────────────────────────────────────────
# 3. report_viewer_pane.dart
#    Line 509: const Text(l10n.proMembershipUpsell) — inside showDialog builder
#    that uses outer `context` via AppLocalizations directly.
#    Line 611: const Text(l10n.unlockForPrice) — in build() of a StatefulWidget,
#    needs final l10n = AppLocalizations.of(context)!; and remove const.
# ─────────────────────────────────────────────────────────────────────
report_path = r'C:\My Projects\AIRTA\lib\widgets\report_viewer_pane.dart'
with open(report_path, 'r', encoding='utf-8') as f:
    content = f.read()

# Fix 509: replace const Text(l10n.proMembershipUpsell) with Text(AppLocalizations.of(context)!.proMembershipUpsell)
old509 = '            child: const Text(l10n.proMembershipUpsell),'
new509 = '            child: Text(AppLocalizations.of(context)!.proMembershipUpsell),'
if old509 in content:
    content = content.replace(old509, new509, 1)
    print('Fixed: report_viewer_pane proMembershipUpsell const')
else:
    print('WARNING: report_viewer_pane proMembershipUpsell not found')

# Fix 611: Add l10n to build() of the widget at line ~601, remove const
# The build() is in a StatefulWidget, find its specific pattern
old611 = (
    '  @override\n'
    '  Widget build(BuildContext context) {\n'
    '    return Row(\n'
    '      children: [\n'
    '        Expanded(\n'
    '          child: Text(\n'
    "            'Limited demo offer: reveal this full analysis for \\$10. Expires in $_secondsRemaining seconds.',\n"
    '          ),\n'
    '        ),\n'
    '        TextButton(\n'
    '          onPressed: _secondsRemaining > 0 ? widget.onUnlock : null,\n'
    '          child: const Text(l10n.unlockForPrice),\n'
    '        ),'
)
new611 = (
    '  @override\n'
    '  Widget build(BuildContext context) {\n'
    '    final l10n = AppLocalizations.of(context)!;\n'
    '    return Row(\n'
    '      children: [\n'
    '        Expanded(\n'
    '          child: Text(\n'
    "            'Limited demo offer: reveal this full analysis for \\$10. Expires in $_secondsRemaining seconds.',\n"
    '          ),\n'
    '        ),\n'
    '        TextButton(\n'
    '          onPressed: _secondsRemaining > 0 ? widget.onUnlock : null,\n'
    '          child: Text(l10n.unlockForPrice),\n'
    '        ),'
)
if old611 in content:
    content = content.replace(old611, new611, 1)
    print('Fixed: report_viewer_pane unlockForPrice const + added l10n')
else:
    print('WARNING: report_viewer_pane unlockForPrice pattern not found — trying simpler replace')
    # Simpler fallback: just remove const from that specific Text
    old_simple = '          child: const Text(l10n.unlockForPrice),'
    new_simple = '          child: Text(l10n.unlockForPrice),'
    if old_simple in content:
        content = content.replace(old_simple, new_simple, 1)
        print('  Fixed const removal for unlockForPrice')
    # And add l10n to the build() that contains unlockForPrice
    # Find the build method that returns a Row with unlockForPrice
    marker = "          child: Text(l10n.unlockForPrice),"
    idx = content.find(marker)
    if idx >= 0:
        # Find the build( context) before this
        build_start = content.rfind('  Widget build(BuildContext context) {', 0, idx)
        if build_start >= 0:
            insert_after = content.find('\n', build_start) + 1
            if 'final l10n = AppLocalizations.of(context)!;' not in content[build_start:build_start+200]:
                content = content[:insert_after] + '    final l10n = AppLocalizations.of(context)!;\n' + content[insert_after:]
                print('  Added l10n to build() containing unlockForPrice')

with open(report_path, 'w', encoding='utf-8') as f:
    f.write(content)

print('\nAll const fixes done.')

path = r'C:\My Projects\AIRTA\lib\widgets\report_viewer_pane.dart'
with open(path, 'r', encoding='utf-8') as f:
    content = f.read()

# Fix: l10n.unlockForPrice -> l10n.unlockForPrice(r'$10')
old = 'child: Text(l10n.unlockForPrice),'
new = "child: Text(l10n.unlockForPrice(r'$10')),"

if old in content:
    content = content.replace(old, new, 1)
    print('Fixed unlockForPrice call to pass price argument')
else:
    print('Pattern not found:', repr(old))

with open(path, 'w', encoding='utf-8') as f:
    f.write(content)
print('Done.')

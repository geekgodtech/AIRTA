import re
path = r'C:\My Projects\AIRTA\lib\l10n\app_en.arb'
with open(path, 'r', encoding='utf-8') as f:
    content = f.read()

# Find all JSON keys
matches = list(re.finditer(r'"unlockForPrice"', content))
print(f'Total: {len(matches)} occurrences of "unlockForPrice"')
for m in matches:
    print(f'  pos={m.start()}: {repr(content[m.start():m.start()+80])}')

# Also check near the end for any plain version
idx = content.rfind('"unlockForPrice"')
print(f'\nLast occurrence at {idx}: {repr(content[idx:idx+100])}')

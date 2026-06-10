#!/usr/bin/env python3
"""Center Discord button text properly using Center widget"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart"

with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# Replace the Row with a Center + Row combination
old_code = """              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.discord, size: 20),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        l10n.selectDiscordChannel,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),"""

new_code = """              : Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.discord, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        l10n.selectDiscordChannel,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),"""

if old_code in content:
    content = content.replace(old_code, new_code)
    print("Fixed Discord button text centering")
else:
    print("Could not find the code to replace")
    # Let's try to find what we have
    import re
    match = re.search(r': Row\([^)]+mainAxisAlignment[^)]+children:', content, re.DOTALL)
    if match:
        print(f"Found: {match.group(0)[:100]}...")

with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

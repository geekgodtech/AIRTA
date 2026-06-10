"""
Add the 12 new l10n method implementations to all non-English locale files.
For now, all non-English locales will fall back to English strings.
(Proper translations can be added later via the ARB files.)
"""
import os

# The 12 new implementations (same as English — fallback)
NEW_IMPLS = """
  @override
  String get noMessagesInDateRangeBody => 'No messages were found in the selected date range. Try adjusting the date range.';

  @override
  String get credentialsSavedSuccess => 'Credentials saved successfully';

  @override
  String errorSavingCredentials(String error) {
    return 'Error saving credentials: $error';
  }

  @override
  String get credentialsSecurityInfo => 'Your credentials are stored securely on this device only and are never uploaded to our servers.';

  @override
  String get savingButton => 'Saving...';

  @override
  String get saveAllCredentials => 'Save Credentials';

  @override
  String get proPlusLabel => 'Pro+';

  @override
  String get upgradeButton => 'Upgrade';

  @override
  String get usernameLabel => 'Username';

  @override
  String get passwordLabel => 'Password';

  @override
  String get upgradeToProPlusBody => 'Upgrade to Pro Plus to access third-party platform integrations and advanced features.';

  @override
  String get noConversationsFoundBody => 'No conversations were found. Make sure your credentials are correct and try again.';
"""

l10n_dir = r"C:\My Projects\AIRTA\lib\l10n"

# All locale files except English (already done)
locale_files = [f for f in os.listdir(l10n_dir)
                if f.startswith("app_localizations_") and f.endswith(".dart")
                and f != "app_localizations_en.dart"
                and f != "app_localizations.dart"]

print(f"Found {len(locale_files)} non-English locale files")

for fname in sorted(locale_files):
    fpath = os.path.join(l10n_dir, fname)
    with open(fpath, "r", encoding="utf-8") as f:
        content = f.read()

    # Skip if already has the new keys
    if "noMessagesInDateRangeBody" in content:
        print(f"  {fname}: Already has new keys, skipping")
        continue

    # Find end of class — last "\n}" in the file
    class_end = content.rfind("\n}")
    if class_end == -1:
        print(f"  {fname}: ERROR — could not find end of class")
        continue

    new_content = content[:class_end] + NEW_IMPLS + content[class_end:]

    with open(fpath, "w", encoding="utf-8") as f:
        f.write(new_content)
    print(f"  {fname}: Updated")

print("\nDone!")

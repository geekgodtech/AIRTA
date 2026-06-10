"""
Fix app_localizations.dart:
1. Remove the misplaced declarations that ended up inside the _AppLocalizationsDelegate throw block
2. Re-insert them properly at the end of the abstract AppLocalizations class body
"""

path = r"C:\My Projects\AIRTA\lib\l10n\app_localizations.dart"
with open(path, "r", encoding="utf-8") as f:
    content = f.read()

# ── Step 1: Remove the misplaced block ────────────────────────────────────────
# The misplaced block starts with "\n  /// Body text when no messages found in date range"
# just before position ~8564 and ends with "  String get noConversationsFoundBody;\n}"
# More precisely: it starts right after the throw statement and ends with the file

misplaced_start_marker = "\n\n  /// Body text when no messages found in date range"
misplaced_end_marker = "  String get noConversationsFoundBody;\n}"

# Find where the misplaced block starts
mp_start = content.find(misplaced_start_marker)
if mp_start == -1:
    print("ERROR: Could not find start of misplaced block")
    exit(1)

# Find where it ends
mp_end = content.find(misplaced_end_marker, mp_start)
if mp_end == -1:
    print("ERROR: Could not find end of misplaced block")
    exit(1)

mp_end += len(misplaced_end_marker)
print(f"Found misplaced block: pos {mp_start} to {mp_end}")
print(f"Block content preview: {repr(content[mp_start:mp_start+100])}")
print(f"Block end preview: {repr(content[mp_end-100:mp_end])}")

# Remove the misplaced block — replace with just "}"  (the closing brace of the file-level class)
# The character at mp_end should be end of file or "\n" 
removed_content = content[:mp_start] + "\n}" + content[mp_end:]
print(f"\nAfter removal, chars around removal point: {repr(removed_content[mp_start-50:mp_start+20])}")

# ── Step 2: Insert declarations in the right place ────────────────────────────
# Find end of abstract AppLocalizations class — just before "class _AppLocalizationsDelegate"
insert_marker = "  String get okButton;\n}\n\nclass _AppLocalizationsDelegate"
insert_pos = removed_content.find(insert_marker)
if insert_pos == -1:
    print("ERROR: Could not find insertion point (okButton + class _AppLocalizationsDelegate)")
    exit(1)

# Insert right after "  String get okButton;\n"
insert_after = insert_pos + len("  String get okButton;\n")
print(f"\nInsertion point at: {insert_after}")
print(f"Context: {repr(removed_content[insert_after-30:insert_after+50])}")

new_declarations = """
  /// Body text when no messages found in date range
  ///
  /// In en, this message translates to:
  /// **'No messages were found in the selected date range. Try adjusting the date range.'**
  String get noMessagesInDateRangeBody;

  /// Success message when platform credentials are saved
  ///
  /// In en, this message translates to:
  /// **'Credentials saved successfully'**
  String get credentialsSavedSuccess;

  /// Error message when saving platform credentials fails
  ///
  /// In en, this message translates to:
  /// **'Error saving credentials: {error}'**
  String errorSavingCredentials(String error);

  /// Security information about credential storage
  ///
  /// In en, this message translates to:
  /// **'Your credentials are stored securely on this device only and are never uploaded to our servers.'**
  String get credentialsSecurityInfo;

  /// Button label while saving is in progress
  ///
  /// In en, this message translates to:
  /// **'Saving...'**
  String get savingButton;

  /// Button label to save all platform credentials
  ///
  /// In en, this message translates to:
  /// **'Save Credentials'**
  String get saveAllCredentials;

  /// Label indicating Pro Plus tier requirement
  ///
  /// In en, this message translates to:
  /// **'Pro+'**
  String get proPlusLabel;

  /// Button to open upgrade/upsell dialog
  ///
  /// In en, this message translates to:
  /// **'Upgrade'**
  String get upgradeButton;

  /// Label for username input field
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get usernameLabel;

  /// Label for password input field
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// Body text for upgrade to Pro Plus dialog
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Pro Plus to access third-party platform integrations and advanced features.'**
  String get upgradeToProPlusBody;

  /// Body text when no conversations are found
  ///
  /// In en, this message translates to:
  /// **'No conversations were found. Make sure your credentials are correct and try again.'**
  String get noConversationsFoundBody;
"""

final_content = removed_content[:insert_after] + new_declarations + removed_content[insert_after:]

with open(path, "w", encoding="utf-8") as f:
    f.write(final_content)

print("\nDone! Verifying...")
# Verify the abstract class end looks correct
idx = final_content.find("class _AppLocalizationsDelegate")
print(repr(final_content[idx-300:idx+20]))

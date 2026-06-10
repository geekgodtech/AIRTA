"""
Add 12 missing localization keys to:
1. app_en.arb
2. app_localizations.dart (abstract declarations)
3. app_localizations_en.dart (English implementations)
"""

import re

# ─── 1. The 12 missing keys with their English strings ────────────────────────
# Format: (key, english_value, description, has_param, param_name)
MISSING_KEYS = [
    # analyzer_workspace.dart
    ("noMessagesInDateRangeBody",
     "No messages were found in the selected date range. Try adjusting the date range.",
     "Body text when no messages found in date range",
     False, None),

    # platform_credentials_page.dart
    ("credentialsSavedSuccess",
     "Credentials saved successfully",
     "Success message when platform credentials are saved",
     False, None),

    ("errorSavingCredentials",
     "Error saving credentials: {error}",
     "Error message when saving platform credentials fails",
     True, "error"),

    ("credentialsSecurityInfo",
     "Your credentials are stored securely on this device only and are never uploaded to our servers.",
     "Security information about credential storage",
     False, None),

    ("savingButton",
     "Saving...",
     "Button label while saving is in progress",
     False, None),

    ("saveAllCredentials",
     "Save Credentials",
     "Button label to save all platform credentials",
     False, None),

    ("proPlusLabel",
     "Pro+",
     "Label indicating Pro Plus tier requirement",
     False, None),

    ("upgradeButton",
     "Upgrade",
     "Button to open upgrade/upsell dialog",
     False, None),

    ("usernameLabel",
     "Username",
     "Label for username input field",
     False, None),

    ("passwordLabel",
     "Password",
     "Label for password input field",
     False, None),

    ("upgradeToProPlusBody",
     "Upgrade to Pro Plus to access third-party platform integrations and advanced features.",
     "Body text for upgrade to Pro Plus dialog",
     False, None),

    # unipile_conversation_picker.dart
    ("noConversationsFoundBody",
     "No conversations were found. Make sure your credentials are correct and try again.",
     "Body text when no conversations are found",
     False, None),
]


# ─── 2. Update app_en.arb ─────────────────────────────────────────────────────
def update_arb():
    path = r"C:\My Projects\AIRTA\lib\l10n\app_en.arb"
    with open(path, "r", encoding="utf-8") as f:
        content = f.read()

    # We insert before the closing "}" of the JSON object
    # Find the last "}" that closes the file
    insert_point = content.rstrip().rfind("\n}")
    if insert_point == -1:
        print("ERROR: Could not find end of ARB file")
        return False

    new_entries = ""
    for key, value, desc, has_param, param_name in MISSING_KEYS:
        # Skip if already present
        if f'"{key}"' in content:
            print(f"  ARB: {key} already exists, skipping")
            continue

        # Escape dollar signs in value for ARB
        arb_value = value.replace("$", "\\$")

        if has_param:
            new_entries += f',\n  "{key}": "{arb_value}",\n  "@{key}": {{\n    "description": "{desc}",\n    "placeholders": {{\n      "{param_name}": {{ "type": "String" }}\n    }}\n  }}'
        else:
            new_entries += f',\n  "{key}": "{arb_value}",\n  "@{key}": {{\n    "description": "{desc}"\n  }}'

    if not new_entries:
        print("  ARB: All keys already exist")
        return True

    new_content = content[:insert_point] + new_entries + content[insert_point:]
    with open(path, "w", encoding="utf-8") as f:
        f.write(new_content)
    print(f"  ARB: Updated with {len([k for k in MISSING_KEYS if f'\"{k[0]}\"' not in content])} new entries")
    return True


# ─── 3. Update app_localizations.dart (abstract class) ───────────────────────
def update_abstract():
    path = r"C:\My Projects\AIRTA\lib\l10n\app_localizations.dart"
    with open(path, "r", encoding="utf-8") as f:
        content = f.read()

    # Find the closing brace of the abstract class AppLocalizations
    # We insert just before the final closing "}" of the class
    # The class ends with the last "}" before "// ignore_for_file" or end of class body
    # Strategy: insert after the last existing abstract declaration block

    new_declarations = ""
    for key, value, desc, has_param, param_name in MISSING_KEYS:
        if key in content:
            print(f"  Abstract: {key} already exists, skipping")
            continue

        arb_display = value.replace("\\$", "$")  # Show clean in comments
        if has_param:
            # Replace {param} with {param} in display
            arb_display_formatted = arb_display.replace("{" + param_name + "}", "{" + param_name + "}")
            new_declarations += f'\n  /// {desc}\n  ///\n  /// In en, this message translates to:\n  /// **\'{arb_display_formatted}\'**\n  String {key}(String {param_name});\n'
        else:
            new_declarations += f'\n  /// {desc}\n  ///\n  /// In en, this message translates to:\n  /// **\'{arb_display}\'**\n  String get {key};\n'

    if not new_declarations:
        print("  Abstract: All keys already exist")
        return True

    # Find the last abstract declaration and insert after the last "}" of the class
    # The class body ends with "}\n" followed by nothing or comments
    # Find "  String get captureComplete;\n}\n" or similar end
    # Better: find the last occurrence of ";\n\n}" which is likely the end of the class
    
    # Find the closing brace of the abstract AppLocalizations class
    # Look for pattern: last ";\n}" near the end
    class_end = content.rfind(";\n}")
    if class_end == -1:
        class_end = content.rfind(";\n\n}")
    if class_end == -1:
        print("ERROR: Could not find end of abstract class")
        return False

    insert_at = class_end + len(";\n")  # Insert after the last ";" before "}"
    new_content = content[:insert_at] + new_declarations + content[insert_at:]

    with open(path, "w", encoding="utf-8") as f:
        f.write(new_content)
    print(f"  Abstract: Added {sum(1 for k in MISSING_KEYS if k[0] not in content)} declarations")
    return True


# ─── 4. Update app_localizations_en.dart (English implementations) ────────────
def update_en_impl():
    path = r"C:\My Projects\AIRTA\lib\l10n\app_localizations_en.dart"
    with open(path, "r", encoding="utf-8") as f:
        content = f.read()

    new_impls = ""
    for key, value, desc, has_param, param_name in MISSING_KEYS:
        if key in content:
            print(f"  EN impl: {key} already exists, skipping")
            continue

        # Escape single quotes in value
        escaped = value.replace("'", "\\'")
        if has_param:
            # For parameterized strings: "Error: {error}" -> use $error in Dart
            dart_value = escaped.replace("{" + param_name + "}", "$" + param_name)
            new_impls += f'\n  @override\n  String {key}(String {param_name}) {{\n    return \'{dart_value}\';\n  }}\n'
        else:
            new_impls += f'\n  @override\n  String get {key} => \'{escaped}\';\n'

    if not new_impls:
        print("  EN impl: All keys already exist")
        return True

    # Find end of the AppLocalizationsEn class
    class_end = content.rfind("\n}")
    if class_end == -1:
        print("ERROR: Could not find end of EN class")
        return False

    insert_at = class_end  # Insert before the last "}"
    new_content = content[:insert_at] + new_impls + content[insert_at:]

    with open(path, "w", encoding="utf-8") as f:
        f.write(new_content)
    print(f"  EN impl: Added {sum(1 for k in MISSING_KEYS if k[0] not in content)} implementations")
    return True


if __name__ == "__main__":
    print("Step 1: Updating app_en.arb...")
    update_arb()

    print("\nStep 2: Updating app_localizations.dart (abstract)...")
    update_abstract()

    print("\nStep 3: Updating app_localizations_en.dart (EN impl)...")
    update_en_impl()

    print("\nDone!")

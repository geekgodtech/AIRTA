#!/usr/bin/env python3
"""Update DeepSeek API key across all project files

Usage: python update_deepseek_key.py <new_api_key>
Example: python update_deepseek_key.py sk-newkey123456789
"""

import sys
import os

OLD_KEY = 'sk-61422c74411549248f23b4656d4152ae'

FILES_TO_UPDATE = [
    r'C:\My Projects\AIRTA\docs\index.html',
    r'C:\My Projects\AIRTA\AGENTS.md',
    r'C:\My Projects\AIRTA\TASKS_REMAINING.md',
    r'C:\My Projects\AIRTA\QUICK_START.md',
    r'C:\My Projects\AIRTA\GITHUB_ACTIONS_SETUP.md',
    r'C:\My Projects\AIRTA\FIREBASE_SETUP_CHECKLIST.md',
    r'C:\My Projects\AIRTA\DISCORD_INTEGRATION_SUMMARY.md',
    r'C:\My Projects\AIRTA\PROJECT_VISION.md',
    r'C:\My Projects\AIRTA\UNIPILE_SETUP_INSTRUCTIONS.md',
    r'C:\My Projects\AIRTA\UNIPILE_REACTIVATION_GUIDE.md',
]

def update_key_in_file(filepath, old_key, new_key):
    """Replace old key with new key in a file"""
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()

        if old_key not in content:
            return False, "Key not found in file"

        new_content = content.replace(old_key, new_key)

        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(new_content)

        count = content.count(old_key)
        return True, f"Updated {count} occurrence(s)"
    except Exception as e:
        return False, str(e)

def main():
    if len(sys.argv) != 2:
        print("Usage: python update_deepseek_key.py <new_api_key>")
        print(f"Current key: {OLD_KEY}")
        print("\nTo get a new DeepSeek API key:")
        print("1. Go to https://platform.deepseek.com/")
        print("2. Sign in to your account")
        print("3. Go to API Keys section")
        print("4. Create a new key or check your balance")
        print("5. If balance is 0, add credits to your account")
        sys.exit(1)

    new_key = sys.argv[1]

    if not new_key.startswith('sk-'):
        print("Warning: DeepSeek API keys typically start with 'sk-'")
        response = input("Continue anyway? (y/n): ")
        if response.lower() != 'y':
            sys.exit(1)

    print(f"Updating DeepSeek API key from:")
    print(f"  Old: {OLD_KEY}")
    print(f"  New: {new_key}")
    print()

    updated_files = []
    failed_files = []

    for filepath in FILES_TO_UPDATE:
        if not os.path.exists(filepath):
            failed_files.append((filepath, "File not found"))
            continue

        success, message = update_key_in_file(filepath, OLD_KEY, new_key)
        if success:
            updated_files.append((filepath, message))
            print(f"✓ {os.path.basename(filepath)}: {message}")
        else:
            failed_files.append((filepath, message))
            print(f"✗ {os.path.basename(filepath)}: {message}")

    print()
    print(f"Updated {len(updated_files)} files successfully")
    if failed_files:
        print(f"Failed to update {len(failed_files)} files:")
        for filepath, error in failed_files:
            print(f"  - {filepath}: {error}")

    print()
    print("IMPORTANT: After updating the API key, you must:")
    print("1. Commit and push the changes to GitHub")
    print("2. Rebuild and redeploy the app")
    print("3. For the website (docs/index.html), changes are live immediately after push")
    print()
    print("To deploy:")
    print("  git add -A")
    print("  git commit -m 'Update DeepSeek API key'")
    print('  git push origin main')
    print('  powershell -ExecutionPolicy Bypass -File "C:\\My Projects\\AIRTA\\deploy.ps1"')

if __name__ == '__main__':
    main()

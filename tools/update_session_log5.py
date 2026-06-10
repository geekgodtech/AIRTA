#!/usr/bin/env python3
"""Append session entry to SESSION_LOG.md"""

FILE_PATH = r"C:\My Projects\AIRTA\.devin\SESSION_LOG.md"

new_entry = '''

---

## Session - 2025-01-22 Part 5 (Adaptive/Devin)

### What was accomplished
- Replaced scattered AppBar actions with unified hamburger menu
  - Removed: DarkModeSwitch, LanguageSelector, and separate more_vert menu from AppBar
  - Added: Single hamburger menu (Icons.menu) in AppBar actions
- Created _HamburgerMenu widget class with organized menu sections:
  - **Settings Section:**
    - Dark Mode rocker switch (interactive within menu)
    - Language selector dropdown (interactive within menu)
  - **Navigation Section:**
    - My Account (account_circle icon)
    - Membership Options (workspace_premium icon)
    - Referral Program (card_giftcard icon)
  - **Help Section:**
    - Support (support_agent icon) - opens dialog
    - About (info icon) - navigates to AboutPage
- Menu uses PopupMenuDivider between sections for visual organization
- Added necessary imports (UserAccountPage, MembershipLandingPage, ReferralScreen)
- AppBar is now clean with just title and hamburger menu
- Successfully deployed to device RFCX70ZAWZX

### Current state
- App builds successfully (104.8MB demo APK)
- App installed and running on device
- AppBar now shows clean title with single hamburger menu
- Hamburger menu contains all settings and navigation options
- Git: main branch, clean working tree, all changes pushed

### Key facts
- Hamburger menu uses PopupMenuButton with Icons.menu
- Dark Mode switch and Language selector are interactive within the menu items
- All navigation links work and route to correct pages
- Menu organized with visual dividers between functional sections
'''

# Append to file
with open(FILE_PATH, 'a', encoding='utf-8') as f:
    f.write(new_entry)

print("Updated SESSION_LOG.md with new session entry")

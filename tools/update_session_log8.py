#!/usr/bin/env python3
"""Append session entry to SESSION_LOG.md"""

FILE_PATH = r"C:\My Projects\AIRTA\.devin\SESSION_LOG.md"

new_entry = '''

---

## Session - 2026-01-22 Part 8 (Adaptive/Devin)

### What was accomplished
- Added referral reward dialog that appears on app launch when user has 5+ referrals
  - Dialog shows: "Congratulations! You've successfully referred 5 friends..."
  - Displays reward info: "31 Days of Standard Membership FREE"
  - User can choose "Activate Free Month" or "Not Now"
  - On activation: calls activateRewardTrial() + resetForNextCycle()
  - Shows success SnackBar with cycle info
  - Dialog uses dark theme matching app design (green border, purple accents)
- Modified main.dart _ToxicityAnalyzerAppState:
  - Added _checkReferralReward() method
  - Added _showReferralRewardDialog() method
  - Triggers after permissions granted or on app launch (desktop/web path)
- ReferralService already handles trial expiry:
  - _checkTrialExpiry() called during initialize()
  - Reverts membership to pre-trial tier after 31 days
  - Uses SharedPreferences to track trial state
- Successfully deployed to device RFCX70ZAWZX
- Committed and pushed to GitHub

### Current state
- App builds successfully (104.8MB demo APK)
- Referral dialog appears on launch for users with 5+ referrals
- Cyclical referral program: earn 5 → claim → reset → earn 5 more
- Trial expiry automatically handled
- Git: main branch, clean working tree

### Key facts
- Dialog triggers when: referralService.hasEarnedReward && !referralService.trialActivated
- Membership reverts after trialDurationDays (31) via _checkTrialExpiry()
- User can dismiss dialog and claim later from Referral screen
'''

# Append to file
with open(FILE_PATH, 'a', encoding='utf-8') as f:
    f.write(new_entry)

print("Updated SESSION_LOG.md with new session entry")

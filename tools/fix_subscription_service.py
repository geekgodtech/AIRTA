#!/usr/bin/env python3
"""Fix missing methods in subscription_service.dart"""

import re

FILE_PATH = r"C:\My Projects\AIRTA\lib\services\subscription_service.dart"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# Add pack unlocked flags after pendingPackSerialKillerPurchase getter
old_pattern = r"(bool get pendingPackSerialKillerPurchase => _pendingPackSerialKillerPurchase;\n\n)"
new_code = r"""bool get pendingPackSerialKillerPurchase => _pendingPackSerialKillerPurchase;

  // Pack unlocked flags (synced from SharedPreferences)
  bool _isPackGoodUnlocked = false;
  bool get isPackGoodUnlocked => _isPackGoodUnlocked;
  bool _isPackBadUnlocked = false;
  bool get isPackBadUnlocked => _isPackBadUnlocked;
  bool _isPackUglyUnlocked = false;
  bool get isPackUglyUnlocked => _isPackUglyUnlocked;
  bool _isPackNarcissistUnlocked = false;
  bool get isPackNarcissistUnlocked => _isPackNarcissistUnlocked;
  bool _isPackSerialKillerUnlocked = false;
  bool get isPackSerialKillerUnlocked => _isPackSerialKillerUnlocked;

"""
content = re.sub(old_pattern, new_code, content)

# Update clearPending methods to also set unlocked flags
content = content.replace(
    "void clearPendingPackGoodPurchase() { _pendingPackGoodPurchase = false; notifyListeners(); }",
    "void clearPendingPackGoodPurchase() { _pendingPackGoodPurchase = false; _isPackGoodUnlocked = true; notifyListeners(); }"
)
content = content.replace(
    "void clearPendingPackBadPurchase() { _pendingPackBadPurchase = false; notifyListeners(); }",
    "void clearPendingPackBadPurchase() { _pendingPackBadPurchase = false; _isPackBadUnlocked = true; notifyListeners(); }"
)
content = content.replace(
    "void clearPendingPackUglyPurchase() { _pendingPackUglyPurchase = false; notifyListeners(); }",
    "void clearPendingPackUglyPurchase() { _pendingPackUglyPurchase = false; _isPackUglyUnlocked = true; notifyListeners(); }"
)
content = content.replace(
    "void clearPendingPackNarcissistPurchase() { _pendingPackNarcissistPurchase = false; notifyListeners(); }",
    "void clearPendingPackNarcissistPurchase() { _pendingPackNarcissistPurchase = false; _isPackNarcissistUnlocked = true; notifyListeners(); }"
)
content = content.replace(
    "void clearPendingPackSerialKillerPurchase() { _pendingPackSerialKillerPurchase = false; notifyListeners(); }",
    "void clearPendingPackSerialKillerPurchase() { _pendingPackSerialKillerPurchase = false; _isPackSerialKillerUnlocked = true; notifyListeners(); }"
)

# Add _loadPackUnlockStatus call in restorePurchases
old_restore = """    if (prefs.getBool('pack_good') == true) { _pendingPackGoodPurchase = true; }
    if (prefs.getBool('pack_bad') == true)  { _pendingPackBadPurchase  = true; }
    if (prefs.getBool('pack_ugly') == true) { _pendingPackUglyPurchase = true; }
    if (prefs.getBool('pack_narcissist') == true) { _pendingPackNarcissistPurchase = true; }
    if (prefs.getBool('pack_serial_killer') == true) { _pendingPackSerialKillerPurchase = true; }"""

new_restore = """    if (prefs.getBool('pack_good') == true) { _pendingPackGoodPurchase = true; _isPackGoodUnlocked = true; }
    if (prefs.getBool('pack_bad') == true)  { _pendingPackBadPurchase  = true; _isPackBadUnlocked = true; }
    if (prefs.getBool('pack_ugly') == true) { _pendingPackUglyPurchase = true; _isPackUglyUnlocked = true; }
    if (prefs.getBool('pack_narcissist') == true) { _pendingPackNarcissistPurchase = true; _isPackNarcissistUnlocked = true; }
    if (prefs.getBool('pack_serial_killer') == true) { _pendingPackSerialKillerPurchase = true; _isPackSerialKillerUnlocked = true; }"""

content = content.replace(old_restore, new_restore)

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Fixed subscription_service.dart")
print("Added pack unlocked getters and updated clearPending methods")

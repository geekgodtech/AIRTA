#!/usr/bin/env python3
"""Fix _buildPacksListWithCheckmarks placement in membership_landing_page.dart"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\widgets\membership_landing_page.dart"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# Remove the incorrectly placed method at the end (after _ReferralProgramCard class)
method_to_remove = '''

  /// Build a list of all packs with checkmarks for owned ones
  Widget _buildPacksListWithCheckmarks(BuildContext context, ToxicityAnalyzerController controller, AppLocalizations l10n) {
    final colorScheme = Theme.of(context).colorScheme;
    final packs = [
      ('Good Pack', controller.isPackGoodUnlocked, Icons.thumb_up_alt_outlined, Colors.green),
      ('Bad Pack', controller.isPackBadUnlocked, Icons.warning_amber_outlined, Colors.orange),
      ('Ugly Pack', controller.isPackUglyUnlocked, Icons.dangerous_outlined, Colors.red),
      ('Narcissist Pack', controller.isPackNarcissistUnlocked, Icons.face_retouching_natural, Colors.purple),
      ('Serial Killer Pack', controller.isPackSerialKillerUnlocked, Icons.dangerous_outlined, const Color(0xFF5C6BC0)),
    ];

    return Column(
      children: packs.map((pack) {
        final (name, unlocked, icon, color) = pack;
        return ListTile(
          leading: Icon(icon, color: unlocked ? color : color.withOpacity(0.3)),
          title: Text(
            name,
            style: TextStyle(
              color: unlocked ? colorScheme.onSurface : colorScheme.onSurface.withOpacity(0.5),
              decoration: unlocked ? null : TextDecoration.lineThrough,
            ),
          ),
          trailing: unlocked
            ? Icon(Icons.check_circle, color: Colors.green)
            : Icon(Icons.lock, color: Colors.grey),
        );
      }).toList(),
    );
  }
'''

content = content.replace(method_to_remove, '')

# Find where MembershipLandingPage class ends (line 582)
# Insert the method before the closing brace of MembershipLandingPage
# The pattern is the _buildOneTimeUnlockButton method ending with closing braces

insert_marker = '''      }
    }
  }
}

class _MembershipHero'''

new_content = '''      }
    }
  }

  /// Build a list of all packs with checkmarks for owned ones
  Widget _buildPacksListWithCheckmarks(BuildContext context, ToxicityAnalyzerController controller, AppLocalizations l10n) {
    final colorScheme = Theme.of(context).colorScheme;
    final packs = [
      ('Good Pack', controller.isPackGoodUnlocked, Icons.thumb_up_alt_outlined, Colors.green),
      ('Bad Pack', controller.isPackBadUnlocked, Icons.warning_amber_outlined, Colors.orange),
      ('Ugly Pack', controller.isPackUglyUnlocked, Icons.dangerous_outlined, Colors.red),
      ('Narcissist Pack', controller.isPackNarcissistUnlocked, Icons.face_retouching_natural, Colors.purple),
      ('Serial Killer Pack', controller.isPackSerialKillerUnlocked, Icons.dangerous_outlined, const Color(0xFF5C6BC0)),
    ];

    return Column(
      children: packs.map((pack) {
        final (name, unlocked, icon, color) = pack;
        return ListTile(
          leading: Icon(icon, color: unlocked ? color : color.withOpacity(0.3)),
          title: Text(
            name,
            style: TextStyle(
              color: unlocked ? colorScheme.onSurface : colorScheme.onSurface.withOpacity(0.5),
              decoration: unlocked ? null : TextDecoration.lineThrough,
            ),
          ),
          trailing: unlocked
            ? Icon(Icons.check_circle, color: Colors.green)
            : Icon(Icons.lock, color: Colors.grey),
        );
      }).toList(),
    );
  }
}

class _MembershipHero'''

content = content.replace(insert_marker, new_content)

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Fixed membership_landing_page.dart")
print("Moved _buildPacksListWithCheckmarks to correct location inside MembershipLandingPage class")

#!/usr/bin/env python3
"""Fix missing methods in user_submitted_packs_service.dart"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\services\user_submitted_packs_service.dart"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# Add the missing method before the closing brace
old_ending = """      return true;
    } catch (e) {
      debugPrint('UserSubmittedPacksService.requestCashout error: $e');
      return false;
    }
  }
}"""

new_ending = """      return true;
    } catch (e) {
      debugPrint('UserSubmittedPacksService.requestCashout error: $e');
      return false;
    }
  }

  /// Get the count of custom metrics created by the user (sum of all installed pack metrics)
  int getUserCustomMetricsCount() {
    return allInstalledMetrics.length;
  }
}"""

content = content.replace(old_ending, new_ending)

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Fixed user_submitted_packs_service.dart")
print("Added getUserCustomMetricsCount method")

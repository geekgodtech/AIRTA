# Unipile Integration Reactivation Guide

## Status: COMMENTED OUT - Pending Business Negotiation

The Unipile integration code has been **commented out** but **not deleted**. If the business negotiation with Unipile is successful, follow this guide to re-enable the integration.

---

## Negotiation Details

**Proposed Deal:**
- $0.25 per API call
- Expected volume: hundreds to thousands of calls daily
- Potential revenue for Unipile: $50-250+ per day
- Plus monthly access fee (to be negotiated)
- Use case: Short-lived API sessions (create → scrape → destroy)

**Contact:** Awaiting response from Unipile team

---

## Files Modified for Unipile Integration

### 1. **Dashboard Control Pane**
**File:** `lib/widgets/dashboard_control_pane.dart`

**What to uncomment:**

#### Imports (lines 14-17):
```dart
// UNIPILE INTEGRATION - COMMENTED OUT PENDING BUSINESS NEGOTIATION
// Uncomment these imports if Unipile deal is finalized:
// import 'package:which_partner_is_toxic/widgets/unipile_auth_view.dart';
// import 'package:which_partner_is_toxic/widgets/unipile_conversation_picker.dart';
```

**Action:** Remove the `//` from the import lines

#### File Picker Logic (lines 555-563):
```dart
// UNIPILE INTEGRATION - COMMENTED OUT PENDING BUSINESS NEGOTIATION
// Uncomment this block if Unipile deal is finalized
// final subscriptionService = context.read<SubscriptionService>();
// final tier = subscriptionService.activeTier;
// Pro and Pro Plus members get Unipile integration
// if (tier == MembershipTier.pro || tier == MembershipTier.proPlus) {
//   _launchUnipileAuth(context);
//   return;
// }
```

**Action:** Uncomment this entire block

#### Launch Method (lines 671-696):
```dart
// UNIPILE INTEGRATION - COMMENTED OUT PENDING BUSINESS NEGOTIATION
// Uncomment this method if Unipile deal is finalized
/*
Future<void> _launchUnipileAuth(BuildContext context) async {
  // ... method body ...
}
*/
```

**Action:** Remove the `/*` and `*/` comment markers

---

### 2. **Unipile Service**
**File:** `lib/services/unipile_integration_service.dart`

**What to update:**

#### Environment Variables (lines 6-14):
```dart
static const String baseUrl = String.fromEnvironment(
  'UNIPILE_API_URL',
  defaultValue: '',
);

static const String _apiKey = String.fromEnvironment(
  'UNIPILE_API_KEY',
  defaultValue: '',
);
```

**Action:** 
1. Get API URL and API Key from Unipile
2. Build APK with credentials:
```bash
flutter build apk --release \
  --dart-define=DEEPSEEK_API_KEY=sk-61422c74411549248f23b4656d4152ae \
  --dart-define=UNIPILE_API_URL=https://apiXXX.unipile.com:XXX/api/v1 \
  --dart-define=UNIPILE_API_KEY=your_actual_unipile_api_key_here
```

#### Demo Mode (line 19):
```dart
static bool get _demoMode => baseUrl.isEmpty || _apiKey.isEmpty;
```

**Action:** This will automatically disable demo mode once credentials are provided

---

### 3. **Supporting Files**

These files are already complete and ready to use:

- ✅ `lib/widgets/unipile_auth_view.dart` - WebView for Unipile authentication
- ✅ `lib/widgets/unipile_conversation_picker.dart` - Conversation selection UI
- ✅ `lib/services/unipile_integration_service.dart` - API integration service

**No changes needed** - these will work once uncommented

---

## Testing Checklist

After re-enabling Unipile integration:

1. **Build with credentials:**
   ```bash
   flutter build apk --release \
     --dart-define=DEEPSEEK_API_KEY=sk-61422c74411549248f23b4656d4152ae \
     --dart-define=UNIPILE_API_URL=<your_url> \
     --dart-define=UNIPILE_API_KEY=<your_key>
   ```

2. **Test Pro membership:**
   - Long press "Select" to activate Pro tier
   - Click "From File" button
   - Should navigate to Unipile auth screen (not file picker)

3. **Test authentication:**
   - Verify Unipile hosted auth page loads
   - Test connecting a messaging account
   - Verify redirect back to app on success

4. **Test conversation picker:**
   - Verify conversations load from Unipile API
   - Test selecting a conversation
   - Verify messages are imported correctly

5. **Test analysis:**
   - Run toxicity analysis on imported conversation
   - Verify report generation works

---

## Alternative Solutions (If Unipile Deal Falls Through)

If Unipile negotiation fails, consider these alternatives:

### Option 1: Browser Extension (Recommended)
- Build Chrome extension for web.whatsapp.com and messenger.com
- Extension extracts chat from DOM
- Sends to app via API
- **Cost:** $0 ongoing
- **Effort:** 2-3 hours with Chrome extension experience

### Option 2: Discord Bot OAuth2 (Pro Plus Only)
- Official Discord API integration
- User authorizes bot to read messages
- **Cost:** $0 (Discord API is free)
- **Effort:** 1-2 weeks

### Option 3: Manual File Upload
- Keep current "From File" flow
- Users manually export chats
- No automation, but works for all platforms
- **Cost:** $0
- **Effort:** Already implemented

---

## Questions?

If you need help reactivating the Unipile integration, refer to:
- Original implementation in git history
- Unipile API documentation: https://developer.unipile.com
- Setup instructions: `UNIPILE_SETUP_INSTRUCTIONS.md`

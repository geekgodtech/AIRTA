# Unipile Integration Setup Instructions

## What You Need from Unipile (9am Tomorrow)

When you speak with Unipile tomorrow, you need to get:

1. **API URL** - Format: `https://apiXXX.unipile.com:XXX`
   - This is your dedicated Unipile API endpoint
   - Example: `https://api22.unipile.com:15260`

2. **API Key** - Format: A long string starting with letters/numbers
   - This authenticates your requests to Unipile
   - Keep this secret and secure

## Your Use Case to Discuss with Unipile

**App**: Which Partner is Toxic - Relationship Communication Analyzer

**Use Case**: 
- Users need to import chat conversations from multiple platforms (WhatsApp, Discord, Telegram, Instagram, Messenger, etc.)
- Pro tier ($19.99/month): Access to import from any messaging platform
- Pro Plus tier ($24.99/month): Same as Pro + Discord community access
- We need to fetch chat history and messages for analysis

**Integration Method**: Hosted Auth Wizard
- Users click "From File" button in the app
- They're redirected to Unipile's hosted auth page
- They authenticate with their messaging platform
- We fetch their chat conversations and messages via API
- We analyze the conversations for relationship toxicity

**Expected Volume**: 
- Starting small, scaling as user base grows
- Need to understand pricing tiers and rate limits

## How to Configure After You Get Credentials

### Step 1: Add Credentials to Build Command

**IMPORTANT**: Never commit API keys to Git! Use `--dart-define` to pass them securely.

When you get your Unipile credentials, build the APK with:

```bash
flutter build apk --release \
  --dart-define=DEEPSEEK_API_KEY=sk-61422c74411549248f23b4656d4152ae \
  --dart-define=UNIPILE_API_URL=https://apiXXX.unipile.com:XXX/api/v1 \
  --dart-define=UNIPILE_API_KEY=your_actual_unipile_api_key_here
```

**Example** (replace with your actual values):
```bash
flutter build apk --release \
  --dart-define=DEEPSEEK_API_KEY=sk-61422c74411549248f23b4656d4152ae \
  --dart-define=UNIPILE_API_URL=https://api22.unipile.com:15260/api/v1 \
  --dart-define=UNIPILE_API_KEY=unipile_abc123xyz456
```

### Step 2: Test the Integration

1. Build APK with the command above (including your Unipile credentials)

2. Install on your device

3. Use the debug gesture to set Pro membership:
   - Long press "Select" for 1 second

4. Click "From File" button

5. You should see the Unipile auth wizard load

6. Connect a messaging account (WhatsApp, Discord, etc.)

7. Select a conversation to analyze

## Current Status

✅ UI flow implemented
✅ Button layout changes for Pro/Pro Plus members
✅ Unipile service integration code ready
✅ Hosted auth link generation implemented
✅ Conversation picker UI created
⏳ Waiting for Unipile API credentials
⏳ Need to test with real Unipile connection

## Files Modified for Unipile Integration

- `lib/services/unipile_integration_service.dart` - Main API integration
- `lib/widgets/unipile_auth_view.dart` - Authentication screen
- `lib/widgets/unipile_conversation_picker.dart` - Conversation selection
- `lib/widgets/dashboard_control_pane.dart` - Routes Pro/Pro Plus to Unipile
- `lib/main.dart` - Added SubscriptionService to provider tree

## Questions to Ask Unipile

1. What are the rate limits for API calls?
2. What's the pricing structure for our use case?
3. Do you support all the platforms we need (WhatsApp, Discord, Telegram, Instagram, Messenger)?
4. How long is chat history available?
5. Are there any webhook options for real-time updates?
6. What's the authentication flow for end users?
7. Any special considerations for mobile apps?

# FIREBASE SETUP — COMPLETE TODO LIST (SOUP TO NUTS)

**Project ID:** `airta-6e049`
**Console URL:** https://console.firebase.google.com/project/airta-6e049

**STATUS:** Firebase project exists. google-services.json is in the Android app.
Firestore, Remote Config, and Web App registration are NOT yet configured in the console.

---

## STEP 0: AUTHENTICATE FIREBASE CLI (USER MUST DO THIS MANUALLY)

Node.js is installed. Run this in a normal PowerShell/terminal window (NOT in Devin):

```powershell
npx -y firebase-tools@latest login
```

This opens a browser to authenticate with Google. Once complete, the Firebase MCP
server and CLI will have full access to the `airta-6e049` project.

After login, verify access works:
```powershell
npx firebase-tools@latest projects:list
```

You should see `airta-6e049` in the output.

---

## PRIORITY 1: ENABLE FIRESTORE DATABASE

1. Go to Firebase Console → Build → Firestore Database
2. Click "Create Database"
3. Choose location: `us-east1` (or closest to target users)
4. Start in **production mode** (we have our own rules)
5. Once created, go to Rules tab and paste the contents of `C:\My Projects\AIRTA\firestore.rules`

### Collections the app uses (will auto-create on first write):
| Collection | Purpose |
|-----------|---------|
| `users` | Device registration (deviceId, email, tier, lastSeen) |
| `referrals` | Referral program tracking (pending/credited numbers, credits) |
| `developer_licenses` | Metric Pack Developer License records |
| `user_submitted_packs` | Community-submitted metric packs |
| `creator_credits` | Creator earnings balance |
| `sales_transactions` | Purchase/sale records |
| `cashout_requests` | Creator cashout requests |
| `admin_overrides` | Admin-granted feature/tier overrides |

---

## PRIORITY 2: REGISTER A FIREBASE WEB APP

This is needed for the web submission forms AND the admin panel.

1. Go to Firebase Console → Project Settings (gear icon) → General
2. Scroll to "Your apps" → Click "Add app" → Choose Web (</> icon)
3. Nickname: `AIRTA Web`
4. Do NOT check "Also set up Firebase Hosting"
5. Click "Register app"
6. Copy the config values. You'll get something like:
   ```javascript
   const firebaseConfig = {
     apiKey: "AIzaSy...",
     authDomain: "airta-6e049.firebaseapp.com",
     projectId: "airta-6e049",
     storageBucket: "airta-6e049.firebasestorage.app",
     messagingSenderId: "1075538671730",
     appId: "1:1075538671730:web:REAL_VALUE_HERE"
   };
   ```

### Update these files with the REAL Web App config:

**File 1:** `docs/submit-50.html` (line ~161)
```javascript
const firebaseConfig = {
  apiKey: "AIzaSyCkUwNaUgV7_JoY7kfTE7zvWIAmzOzY2gc",
  authDomain: "airta-6e049.firebaseapp.com",
  projectId: "airta-6e049",
  storageBucket: "airta-6e049.firebasestorage.app",
  messagingSenderId: "1075538671730",
  appId: "REPLACE_WITH_REAL_WEB_APP_ID"
};
```

**File 2:** `docs/submit-100.html` (same config, same location)

**File 3:** `admin_tool/lib/main.dart` (line ~9)
```dart
FirebaseOptions(
  apiKey: 'AIzaSyCkUwNaUgV7_JoY7kfTE7zvWIAmzOzY2gc',
  appId: 'REPLACE_WITH_REAL_WEB_APP_ID',
  messagingSenderId: '1075538671730',
  projectId: 'airta-6e049',
)
```

---

## PRIORITY 3: SET UP REMOTE CONFIG

Go to Firebase Console → Build → Remote Config → Click "Create configuration"

### Parameters to create (all of these are read by the app):

| Parameter Key | Type | Default Value | Description |
|--------------|------|---------------|-------------|
| `min_required_version` | String | `1.0.0` | Force update if app version < this |
| `force_update` | Boolean | `false` | If true, blocks app until updated |
| `update_message` | String | `A new version is available with exciting features!` | Shown in force-update dialog |
| `android_store_url` | String | `https://play.google.com/store/apps/details?id=com.airta.airelationshiptoxicityanalyzer` | Play Store link |
| `ios_store_url` | String | `https://apps.apple.com/app/airta/id1234567890` | App Store link (update when real) |
| `standard_tier_price` | String | `9.99` | Display price for Standard |
| `discord_addon_price` | String | `9.99` | Display price for Discord add-on |
| `discord_addon_enabled` | Boolean | `false` | Master switch for Discord feature |
| `discord_bot_token` | String | (empty) | Discord bot token (add when ready) |
| `discord_client_id` | String | (empty) | Discord OAuth2 client ID |
| `discord_client_secret` | String | (empty) | Discord OAuth2 client secret |
| `one_time_unlock_price` | String | `19.99` | Display price for lifetime unlock |
| `standard_tier_features` | String | `Unlimited SMS analysis,Advanced AI insights,PDF report export,Priority support` | Comma-separated feature list |
| `discord_addon_features` | String | `Discord server channel analysis,Import up to 10000 messages per channel,Full AI toxicity analysis,PDF reports for Discord conversations` | Comma-separated |
| `pro_tier_features` | String | `Everything in Standard,WhatsApp analysis,Facebook Messenger analysis,Instagram DM analysis,Email analysis` | Comma-separated |
| `pro_plus_tier_features` | String | `Everything in Pro,Discord server analysis,Custom integrations,API access,White-label reports` | Comma-separated |
| `supported_platforms` | String | `sms,whatsapp,messenger,instagram,email,linkedin,telegram,twitter,discord` | Comma-separated platform list |

After creating all parameters: **Click "Publish changes"**

---

## PRIORITY 4: DEPLOY FIRESTORE SECURITY RULES

If using Firebase CLI (preferred):
```bash
cd "C:\My Projects\AIRTA"
npx firebase-tools deploy --only firestore:rules --project airta-6e049
```

Or manually: copy the contents of `firestore.rules` → paste in Firebase Console → Firestore → Rules → Publish.

---

## PRIORITY 5: VERIFY EXISTING CONFIG FILES

### Already correct (no changes needed):
- `android/app/google-services.json` — has correct project_number, project_id, api_key, app_id
- `ios/Runner/GoogleService-Info.plist` — should already exist (verify)

### Known values:
| Key | Value |
|-----|-------|
| Project ID | `airta-6e049` |
| Project Number | `1075538671730` |
| Android API Key | `AIzaSyCkUwNaUgV7_JoY7kfTE7zvWIAmzOzY2gc` |
| Android App ID | `1:1075538671730:android:cec89ea9eac9bb50a42aeb` |
| Package Name | `com.airta.airelationshiptoxicityanalyzer` |
| Storage Bucket | `airta-6e049.firebasestorage.app` |
| Web App ID | **NEEDS TO BE CREATED** (see Priority 2) |

---

## PRIORITY 6: MCP FIREBASE ACCESS (for future agents)

The Firebase MCP server has been configured in `~/.codeium/windsurf/mcp_config.json`:
```json
"firebase": {
  "command": "npx",
  "args": ["-y", "firebase-tools@latest", "mcp"]
}
```

Before it works, run: `npx firebase-tools login` to authenticate.
After auth, future agents can use the Firebase MCP tools to read/write Firestore, deploy rules, manage Remote Config, etc.

---

## OPTIONAL / FUTURE

- [ ] Add Firebase Authentication (if needed for proper user management beyond device IDs)
- [ ] Set up Firebase Cloud Functions (for server-side purchase validation)
- [ ] Enable Firebase Analytics
- [ ] Add Discord credentials to Remote Config once the Discord Developer Portal bot is created
- [ ] Create iOS GoogleService-Info.plist if it doesn't already exist

---

## VERIFICATION CHECKLIST

After completing the above, verify:
- [ ] Firestore Database is enabled and accessible
- [ ] Security rules are deployed (matches firestore.rules file)
- [ ] Web App is registered and appId is updated in submit-50.html, submit-100.html, and admin_tool
- [ ] All 18 Remote Config parameters are created and published
- [ ] `npx firebase-tools login` has been run successfully
- [ ] Admin tool can connect and list users (run: `cd admin_tool && flutter run -d windows`)
- [ ] Web submission forms can write to Firestore (test submit-50.html in browser)

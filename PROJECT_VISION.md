# AIRTA — Master Project Vision & Ideas Log
# READ THIS before starting any session. All feature ideas, future plans, and
# inspired concepts are captured here so nothing is ever lost.

---

## CURRENT VERSION: 1.0.0
## App Name: AIRTA – AI Relationship Analyzer
## Package: com.airta.airelationshiptoxicityanalyzer

---

## PRODUCT IDs (Must match exactly in Play Console / App Store Connect)

| Product ID                | Type          | Price    | Code Status       | Store Status         |
|---------------------------|---------------|----------|-------------------|----------------------|
| `standard_monthly`        | Subscription  | $9.99/mo | CODED ✅          | NOT YET CREATED ⏳   |
| `pro_monthly`             | Subscription  | $19.99/mo| CODED (disabled)  | NOT YET CREATED ⏳   |
| `pro_plus_monthly`        | Subscription  | $24.99/mo| CODED (disabled)  | NOT YET CREATED ⏳   |
| `one_time_unlock`         | Non-consumable| $19.99   | CODED ✅          | NOT YET CREATED ⏳   |
| `discord_addon_monthly`   | Subscription  | $9.99/mo | CODED ✅          | NOT YET CREATED ⏳   |
| `custom_metric_4_99`      | Consumable    | $4.99    | CODED ✅          | NOT YET CREATED ⏳   |

ALL product IDs must be created identically in Google Play Console and Apple App Store Connect
before any real purchases can process. See PAYMENT SETUP section below.

---

## LAUNCH ROADMAP

### v1.0.0 — SMS Only (CURRENT BUILD — Ready to Submit)
- SMS/RCS conversation analysis (Android)
- iOS file upload workflow
- 80+ psychological metrics
- DeepSeek AI analysis engine
- 16-language localization
- Discord server channel analysis (addon)
- Custom Metric purchase ($4.99 one-time, unlimited)
- Subscription tiers (Standard $9.99/mo)

**Firebase Remote Config at launch:**
```json
{
  "min_required_version": "1.0.0",
  "force_update": false,
  "pro_tier_enabled": false,
  "discord_addon_enabled": false,
  "supported_platforms": "sms"
}
```

### v1.1.0 — Multi-Platform (Month 3-4, after 15+ Standard members)
- Unipile integration (WhatsApp, Messenger, Instagram, Email, LinkedIn, Telegram, Twitter/X)
- Pro tier unlocked ($19.99/mo)
- Force update via Firebase Remote Config

### v1.2.0 — Discord Pro Plus (Month 6+)
- Discord via direct Discord API
- Pro Plus tier unlocked ($24.99/mo)

---

## FEATURE IDEAS — FUTURE IMPLEMENTATION

### 💡 "The Good, The Bad & The Ugly" Report Mode
**Inspired idea — implement in v1.1.0 or v1.2.0**

A special report presentation mode that breaks results into three clearly separated visual sections:
- **THE GOOD** — Positive patterns found: empathy expression, repair attempts, accountability,
  reciprocity, secure attachment cues, soft startup patterns, etc.
- **THE BAD** — Warning signs present: contempt, stonewalling, gaslighting, blame shifting,
  dismissiveness, etc.
- **THE UGLY** — Severe red flags: coercive control, threat language, DARVO, love bombing,
  character assassination, isolation pressure, financial control, etc.

Each section should have its own visual theme (green/yellow/red), icon set, and severity scoring.
The report viewer should show these three panels either in a swipeable view or an accordion.
The AI prompt would need to categorize each metric into one of the three buckets based on severity.

---

### 💡 Relationship Timeline / Date-Range Drill-Down
**Already partially implemented (date range filter exists)**

Let users pick a specific time window (e.g., "the week of the big fight") and see how metrics
changed over time. Could show a simple line graph of toxicity score over rolling 30-day windows.
Implement in v1.1.0.

---

### 💡 "Pattern Alert" Push Notifications
**Future — v1.2.0+**

If the app is given permission, it could monitor for certain dangerous SMS keywords/patterns in the
background and send a gentle push notification: "Your recent conversations show elevated
Coercive Control Indicators. Tap to run a full analysis."
Requires careful privacy framing and opt-in consent screen.

---

### 💡 Anonymous Comparison Mode
**Future — v1.2.0+**

After enough users run reports, show anonymized aggregate data:
"In relationships with similar patterns to yours, 73% of users reported improvement after
addressing the top 3 metrics."
Requires backend / Firebase Firestore to store anonymized score distributions.

---

### 💡 "Share My Report" Feature
**Near-term — could add to v1.0.x**

Let users share a redacted summary (not full conversation text) with a therapist or trusted friend.
Could generate a shareable link to a simple web page or a formatted PDF.
The PDF export is already implemented (disabled in screenshot build) — just needs re-enabling and
sharing intent added.

---

### 💡 Couples Mode
**Future — v1.2.0+**

Both partners independently run an analysis on the same conversation (each uploads their own
export). App shows a side-by-side comparison of how each partner perceives the dynamic.
Could be marketed as "See both sides of the story."

---

### 💡 Therapist Export Mode
**Future — Pro tier**

A more clinical report format with DSM-adjacent language, structured for use in therapy sessions.
Would require separate AI prompt tuning. Could be a premium add-on ($4.99 one-time per report).

---

### 💡 "Red Flag Counter" Home Screen Widget (Android)
**Future — v1.2.0+**

Android home screen widget showing the top 3 red flags from the last analysis with a color
severity bar. Tapping opens the app to the full report.

---

### 💡 Voice Message Transcription
**Future — v1.3.0+**

Many relationships communicate via WhatsApp or iMessage voice notes. Use a transcription API
(Whisper, AssemblyAI) to convert voice messages to text before analysis.
High complexity — requires Pro tier at minimum.

---

### 💡 Email / Gmail Thread Analysis
**Future — via Unipile in v1.1.0**

Import email threads with a partner and run the same analysis. Especially useful for coparenting
disputes or work-relationship conflicts. Needs Unipile for Gmail/Outlook access.

---

### 💡 Streak / Progress Tracker
**Future — gamification layer**

If users run repeat analyses over time, show them a "relationship health score trend." 
Improving scores show a green upward trend; worsening shows red. Encourages repeat engagement
and subscription retention.

---

### 💡 AI Chat Follow-Up
**Future — v1.2.0+**

After a report is generated, allow the user to ask the AI follow-up questions:
"What should I say to address the stonewalling pattern?"
"How do I bring up the gaslighting indicators without starting a fight?"
Uses the same DeepSeek API with the report as context. Would be a Pro/Pro Plus feature.

---

## PLATFORM SUPPORT MATRIX

| Platform         | Tier Required | Method        | Status      |
|------------------|--------------|---------------|-------------|
| SMS/RCS (Android)| Standard      | Native read   | LIVE        |
| File Upload      | Standard      | JSON/CSV/TXT  | LIVE        |
| Discord (Server) | Addon $9.99   | Bot API       | Built       |
| iOS SMS          | Standard      | File export   | LIVE        |
| WhatsApp         | Pro           | Unipile       | Future v1.1 |
| Facebook Messenger| Pro          | Unipile       | Future v1.1 |
| Instagram DMs    | Pro           | Unipile       | Future v1.1 |
| Gmail/Email      | Pro           | Unipile       | Future v1.1 |
| LinkedIn         | Pro           | Unipile       | Future v1.1 |
| Telegram         | Pro           | Unipile       | Future v1.1 |
| Twitter/X DMs    | Pro           | Unipile       | Future v1.1 |
| Signal           | N/A           | Not possible  | Skip        |
| Snapchat         | N/A           | Not possible  | Skip        |
| Reddit DMs       | N/A           | API too costly| Skip        |

---

## TECHNICAL NOTES FOR FUTURE AGENTS

### Unipile Integration
- Code is FULLY built but COMMENTED OUT in dashboard_control_pane.dart
- Waiting on Unipile business negotiation (credential-based auth)
- Guide: UNIPILE_REACTIVATION_GUIDE.md
- Proposed deal: $0.25/API call

### Firebase / Remote Config
- Firebase IS integrated (google-services.json present)
- Remote Config controls: force_update, min_required_version, tier enables
- Full guide: REMOTE_CONFIG_GUIDE.md

### Discord Integration
- OAuth2 + bot API fully implemented
- Needs real Bot Token, Client ID, Client Secret from Discord Developer Portal
- Guide: DISCORD_INTEGRATION_SUMMARY.md
- Product ID: discord_addon_monthly

### PDF Report Export
- pdf_synthesis_service.dart EXISTS but is DISABLED (renamed .disabled)
- Was disabled for screenshot automation build
- Re-enable when ready for production

### Keystore / Signing
- File: android/app/airta-release.keystore
- Alias: airta | Password: Kennyloggins1!
- Credentials stored in deploy.ps1 (gitignored)

### DeepSeek API
- Key: sk-61422c74411549248f23b4656d4152ae
- Stored in deploy.ps1 and run_with_secrets.ps1 (both gitignored)
- dart-define: DEEPSEEK_API_KEY

---

## STORE LISTING QUICK REFERENCE

**Short description (80 chars):**
AI-powered analysis of your relationship conversations. Know the truth.

**Category:** Health & Fitness / Lifestyle

**Privacy policy:** docs/privacy-policy.html (also Store Listing/privacy_policy.md)

**Screenshots:** 223 PNGs across 16 languages in Screenshots/Android/ and Screenshots/Apple/

---

## REVENUE PROJECTIONS

| Scenario     | Users | MRR         | After 30% store cut |
|-------------|-------|-------------|---------------------|
| Conservative | 100   | $1,599/mo   | $1,119/mo           |
| Moderate     | 500   | $7,995/mo   | $5,596/mo           |
| Optimistic   | 1,000 | $15,990/mo  | $11,193/mo          |

Plus one-time unlocks ($19.99) and custom metrics ($4.99) on top.

---

## LAUNCH CHECKLIST — VERIFIED STATE AS OF 2026-06-08

### DONE — Code-verified complete ✅
- [x] Firebase project created (project ID: airta-6e049)
- [x] google-services.json in android/app/ ✅
- [x] GoogleService-Info.plist in ios/Runner/ ✅
- [x] Firebase initialized in main.dart ✅
- [x] Firebase Remote Config service — all keys wired up ✅
- [x] Force update / version check system — fully live ✅
- [x] SubscriptionService — real IAP code, initialized in main.dart ✅
- [x] Membership landing page — real purchaseSubscription() calls ✅
- [x] Discord UI button in dashboard ✅
- [x] Discord API service — full OAuth2 implementation ✅
- [x] iOS SMS capture (OCR via ML Kit) ✅
- [x] Custom Metric purchase flow — fully built ✅
- [x] 16-language localization ✅
- [x] Unipile code — fully built (commented out pending negotiation) ✅
- [x] PDF export — fully built (disabled extension, re-enable before launch) ✅

### OUTSTANDING — Must do before app stores ⏳
- [ ] **Create Google Play Developer account** ($25 one-time) — https://play.google.com/console
- [ ] **Create Apple Developer account** ($99/year) — https://developer.apple.com
- [ ] **Create all product IDs in Google Play Console** (see product ID table above)
- [ ] **Create all product IDs in Apple App Store Connect** (same IDs, exact match)
- [ ] **Add Discord credentials to Firebase Remote Config** (Bot Token, Client ID, Client Secret)
      — Go to Firebase Console → Remote Config → add discord_bot_token, discord_client_id, discord_client_secret
- [ ] **Re-enable PDF export** — rename lib/services/pdf_synthesis_service.dart.disabled → .dart
- [ ] **Submit v1.0.0 to Google Play Store**
- [ ] **Submit v1.0.0 to Apple App Store**
- [ ] **Set Firebase Remote Config v1.0.0 launch values** (see LAUNCH ROADMAP above)

### PAYMENT SETUP — What you need to do (see detail below) 💳
- [ ] Create product IDs in Play Console
- [ ] Create product IDs in App Store Connect
- [ ] Test purchases with sandbox accounts before going live


---

## PAYMENT SETUP — Step-by-Step Instructions

The IAP code is 100% complete. The ONLY thing missing is creating the products in the store consoles.
This is a manual admin task — no code changes needed.

### Products to create for v1.0.0 launch:

| Product ID              | Store Type              | Price  | Notes                         |
|-------------------------|-------------------------|--------|-------------------------------|
| `standard_monthly`      | Auto-renewable sub      | $9.99  | Create in SUBSCRIPTIONS tab   |
| `one_time_unlock`       | Non-consumable          | $19.99 | Create in IN-APP PRODUCTS tab |
| `discord_addon_monthly` | Auto-renewable sub      | $9.99  | Create in SUBSCRIPTIONS tab   |
| `custom_metric_4_99`    | Consumable              | $4.99  | Create in IN-APP PRODUCTS tab |

(Pro and Pro Plus come later — don't create those yet)

---

### GOOGLE PLAY CONSOLE (Android)

1. Go to https://play.google.com/console
2. Open your app → **Monetize** in left sidebar

#### Subscriptions (standard_monthly, discord_addon_monthly):
- Click **Products → Subscriptions → Create subscription**
- Product ID: enter EXACTLY as shown in the table (e.g. `standard_monthly`)
- Name, description, price, billing period: 1 month
- Save and click **Activate**
- Repeat for `discord_addon_monthly`

#### In-App Products (one_time_unlock, custom_metric_4_99):
- Click **Products → In-app products → Create product**
- Product ID: enter EXACTLY as shown
- `one_time_unlock` → Type: **Non-consumable** (user buys once, keeps forever)
- `custom_metric_4_99` → Type: **Consumable** (user can buy repeatedly, one per metric)
- Set price, Save, Activate

#### Testing:
- Go to **Setup → License testing** → add your Gmail as a test account
- Test accounts can make purchases without being charged

---

### APPLE APP STORE CONNECT (iOS)

1. Go to https://appstoreconnect.apple.com
2. Open your app → **Features** → **In-App Purchases**

#### Subscriptions (standard_monthly, discord_addon_monthly):
- Click **+** → **Auto-Renewable Subscription**
- Put both in the same Subscription Group (create one called "Memberships")
- Product ID: enter EXACTLY as shown
- Duration: 1 month
- Price: set accordingly
- Submit for review

#### In-App Products (one_time_unlock, custom_metric_4_99):
- Click **+** → **Non-Consumable** for `one_time_unlock`
- Click **+** → **Consumable** for `custom_metric_4_99`
- Product ID: enter EXACTLY as shown
- Submit for review

#### Testing:
- Go to **Users and Access → Sandbox Testers** → create a test Apple ID
- On device: sign out of App Store, run app, sign in with sandbox account
- Purchases using sandbox accounts are free

---

### IMPORTANT RULES
- Product IDs are CASE SENSITIVE and must match the code EXACTLY
- Once activated, product IDs cannot be changed or deleted
- Both stores require the app to be uploaded before products can be fully activated
- Google Play review: ~1-3 days; Apple: ~1-2 days
- Pro/Pro Plus products (`pro_monthly`, `pro_plus_monthly`) — do NOT create yet, wait for v1.1.0

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
| `developer_license_9_99`  | Non-consumable| $9.99    | CODED ✅          | NOT YET CREATED ⏳   |

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

### ✅ "The Good, The Bad & The Ugly" Report Mode — FULLY IMPLEMENTED
**IMPLEMENTED — All 5 metric packs fully localized in 16 languages:**
- **THE GOOD** — 100 positive/healthy pattern metrics (good_1 … good_100) — Severity: 1
- **THE BAD** — 100 warning-sign/harmful pattern metrics (bad_1 … bad_100) — Severity: 3
- **THE UGLY** — 100 severe red-flag/abuse-indicator metrics (ugly_1 … ugly_100) — Severity: 5
- **NARCISSIST PACK** — 50 narcissistic abuse pattern metrics (narcissist_1 … narcissist_50) — Severity: 3
- **SERIAL KILLER PACK** — 50 predatory/violence indicator metrics (serial_killer_1 … serial_killer_50) — Severity: 5

**Total: 400 metrics across 5 packs — all fully localized in 16 languages (EN, ES, FR, DE, IT, PT, NL, PL, RU, TR, UK, AR, ZH, JA, KO, HI)**

The app organizes metrics by severity weight, with visual themes reflecting the category:
- The Good (green): Healthy relationship patterns
- The Bad (yellow): Warning signs and manipulation tactics
- The Ugly (red): Severe abuse and safety indicators
- Serial Killer/Narcissist packs: Specialized deep-dive analysis packs

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

### Firebase / Remote Config — FULLY CONFIGURED ✅
- **Project:** `airta-app` | **Account:** `ceo@airta.net`
- **Console:** https://console.firebase.google.com/project/airta-app
- Firestore Database: ENABLED (us-east1), security rules deployed
- Remote Config: ALL 17 parameters published and live
- Android App: `1:201308661380:android:8599c2e705afda679844d1`
- Web App: `1:201308661380:web:479c8ba0454cb3dc9844d1`
- CLI authenticated, `firebase.json` + `.firebaserc` in project root
- Full reference: `FIREBASE_SETUP_TODO.md`

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

## LAUNCH CHECKLIST — VERIFIED STATE AS OF 2026-06-10

### DONE — Code-verified complete ✅
- [x] Firebase project created (project ID: airta-app, account: ceo@airta.net) ✅
- [x] google-services.json in android/app/ (updated to airta-app) ✅
- [x] GoogleService-Info.plist in ios/Runner/ ✅
- [x] Firebase initialized in main.dart ✅
- [x] Firebase Remote Config service — all keys wired up ✅
- [x] Remote Config — all 17 parameters published to Firebase ✅
- [x] Firestore Database — enabled, security rules deployed ✅
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
- [x] Referral Program — full implementation (service, screen, dashboard tile, attribution) ✅
- [x] Developer License purchase flow ($9.99 lifetime) ✅
- [x] User Account Page (membership, referrals, purchases, sales) ✅
- [x] User Submitted Metric Packs — web forms + in-app browsing + developer license gate ✅
- [x] Admin Panel (Windows GUI) — god-mode user management, override system ✅
- [x] Admin Override Service — app checks Firebase for admin-granted features on startup ✅
- [x] User registration in Firestore (devices register on startup for admin panel) ✅
- [x] Website "Try It Out" — live web demo with 20 metrics, DeepSeek API, uncensored reports ✅
- [x] CAPTCHA (Cloudflare Turnstile) on web demo to prevent spam ✅
- [x] Spell/grammar check (LanguageTool API, all 16 languages) on metric pack submissions ✅

### OUTSTANDING — Must do before app stores ⏳
- [ ] **Create Google Play Developer account** ($25 one-time) — https://play.google.com/console
- [ ] **Create Apple Developer account** ($99/year) — https://developer.apple.com
- [ ] **Create all product IDs in Google Play Console** (see product ID table above)
- [ ] **Create all product IDs in Apple App Store Connect** (same IDs, exact match)
- [ ] **Add Discord credentials to Firebase Remote Config** (Bot Token, Client ID, Client Secret)
      — Go to Firebase Console → Remote Config → add discord_bot_token, discord_client_id, discord_client_secret
- [ ] **Re-enable PDF export** — rename lib/services/pdf_synthesis_service.dart.disabled → .dart
- [ ] **Register real Cloudflare Turnstile site key** — https://dash.cloudflare.com/turnstile (replace test key in try-it.html)
- [ ] **Submit v1.0.0 to Google Play Store**
- [ ] **Submit v1.0.0 to Apple App Store**

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

---

## ✅ REFERRAL PROGRAM — FULLY IMPLEMENTED

**STATUS: DONE — Committed and pushed.**

### What was built:
- `lib/services/referral_service.dart` — Full referral tracking (pending/credited, phone normalization, Firebase Firestore + SharedPreferences)
- `lib/widgets/referral_screen.dart` — Contact picker, SMS intent with pre-populated message, 5-dot progress indicator, reward/trial banners
- Dashboard tile (`_ReferFriendsTile`) with progress dots
- Membership landing page card (`_ReferralProgramCard`)
- Attribution hook in `toxicity_analyzer_controller.dart` — checks for referrals after report completion
- `flutter_contacts` dependency added
- Firestore `referrals` collection with security rules
- Reward: Free 31-day Standard membership (switchable to Pro Plus later when tiers are live)

### Original Concept (preserved for reference)
Users earn a free 31-day membership by successfully referring 5 friends who each download
the app and run at least one report. Attribution is tracked via phone number matching.

---

### User Flow — Referring User

1. **Entry Point:** A "Refer Friends" card/button visible in the membership landing page and/or
   a dedicated section in the app (e.g. settings or dashboard sidebar).

2. **Contact Permission:** When the user taps "Refer a Friend," the app requests contacts
   permission (already granted for SMS users — reuse that permission).

3. **Contact Selection:** User sees a scrollable contact picker and selects up to 5 friends.
   - Show name + phone number for each contact
   - Allow selecting 1–5 contacts (not limited to exactly 5 at once — they can refer more over time)

4. **Message Auto-Send via SMS Intent:** For each selected contact, the app:
   - Immediately captures the contact's phone number and adds it to the referral database
     (marked as "pending" — not credited until they run their first report)
   - Launches the native SMS/messaging app via `sms:` URI intent with the message
     pre-populated in the compose field
   - The referring user just taps **Send** — zero typing, zero copying

   **Pre-populated message template:**
   ```
   Hey [Contact Name]! I found this app called AIRTA – AI Relationship Analyzer and it's
   honestly eye-opening. It reads your text conversations and uses AI to detect toxic patterns,
   manipulation, gaslighting — the works. You should check it out:
   https://geekgodtech.github.io/AIRTA/releases/airta-demo.apk
   ```

   **Android implementation:**
   ```dart
   // url_launcher (already a dependency) handles this natively
   final uri = Uri(
     scheme: 'sms',
     path: contact.phoneNumber,
     queryParameters: {'body': messageText},
   );
   await launchUrl(uri);
   ```

   **Why this is fully policy-compliant:**
   - Uses the standard Android `sms:` URI intent — explicitly sanctioned by Google
   - The user sees the pre-filled message and chooses to send or not
   - The app never sends an SMS programmatically — that would require SMS SEND permission
     and would violate Play Store policy. This approach does NOT.
   - `url_launcher` is already a dependency in pubspec.yaml — zero new packages needed

   **Phone number capture timing — ONLY via this flow:**
   - The phone number is captured and stored as "pending referral" ONLY when the user
     selects a contact through the referral screen and the SMS intent fires.
   - This means the referral database is clean by design — it only ever contains numbers
     that were deliberately referred through the app. No accidental matches, no false credits.
   - If the user cancels out of the SMS app without sending, the number is still stored.
     That is acceptable — a credit is only awarded when the referred person actually runs
     a report, which requires them to have downloaded and used the app. The pending entry
     is harmless if the message was never sent.
   - There is NO passive scanning of the user's contacts or SMS history to populate the
     referral database. Numbers only enter it through an explicit user action in the
     referral screen. This keeps it clean, privacy-respecting, and policy-safe.
   - Fallback: also offer a **"Copy Message"** button per contact for platforms where
     the SMS intent doesn't pre-fill correctly (some iOS messaging apps)

5. **Progress Tracker:** Visible from the referral screen and/or a persistent badge/widget:
   - Shows: "You've earned X / 5 referral credits"
   - Visual progress bar or 5-dot indicator
   - Each dot fills in green when a referred friend runs their first report

6. **Reward Trigger:** When credits reach 5, show a popup:
   ```
   🎉 You've earned a FREE month of Pro Plus!
   You successfully referred 5 friends who ran their first report.
   Want to activate your free 31-day Pro Plus membership now?
   [Start Free Month]  [Remind Me Later]
   ```
   - "Start Free Month" → sets `proplus_free_trial_start` timestamp in SharedPreferences,
     grants Pro Plus access immediately, schedules reversion after 31 days
   - "Remind Me Later" → dismisses, badge stays visible, re-prompts on next app open

7. **Trial Active State:**
   - Show a banner: "Pro Plus Trial — X days remaining"
   - On day 31, auto-revert to whatever plan the user had before the trial
   - Store pre-trial tier in SharedPreferences (`pre_trial_tier`) before granting trial

---

### Attribution Mechanism — Phone Number Matching

**How referral credits are earned:**

1. **At referral time:** When the referring user selects a contact and the SMS intent fires,
   the contact's phone number is stored in the referral database as `pending`.
   - This is the ONLY way a number enters the database — explicit opt-in action by the
     referring user through the referral screen. No passive scanning, no bulk imports.
   - The database is therefore always a precise, intentional list of referred numbers.

2. **At report time:** When any user runs their first report, the app reads the phone number
   of the SMS conversation's other participant (already extracted during SMS parsing — this
   is core app functionality, nothing new).

3. Check that phone number against the referral database's `pending` list across ALL
   referring users (stored in Firebase Firestore or locally in SharedPreferences).
   - Because only deliberately-referred numbers are in the database, false positive
     matches are virtually impossible.

4. If a match is found AND that number hasn't already been credited:
   - Move the number from `pending` → `credited` for the referring user
   - Increment their `credit_count`
   - If `credit_count` reaches 5, trigger the reward popup

5. **Referral Database Schema:**
   ```json
   {
     "referrals": {
       "referring_user_device_id_or_phone": {
         "referred_numbers": ["+15551234567", "+15559876543"],
         "credited_numbers": ["+15551234567"],
         "credit_count": 1,
         "trial_activated": false,
         "trial_start": null,
         "pre_trial_tier": "standard"
       }
     }
   }
   ```

4. If a match is found AND that number hasn't already been credited:
   - Increment `credit_count` for the referring user
   - Add number to `credited_numbers` (prevents double-counting)
   - If `credit_count` reaches 5, trigger the reward popup

**Storage options (choose at implementation time):**
- **Simple (local-only):** SharedPreferences JSON — works offline, no backend needed,
  but referrals only credit if both users are on the same device (not ideal).
- **Recommended:** Firebase Firestore — referral records stored by a device/user ID,
  cross-device attribution works properly. Firestore free tier (50k reads/day) is sufficient
  for early launch volume.

---

### New Product IDs Needed

| Product ID            | Type       | Price | Notes                                   |
|-----------------------|------------|-------|-----------------------------------------|
| `pro_plus_monthly`    | Subscription | $24.99/mo | Already coded, just needs store creation |

No new product ID needed for the free trial — it is granted programmatically, not via IAP.

---

### Code Components to Build (at implementation time)

| Component | File | Notes |
|-----------|------|-------|
| `ReferralService` | `lib/services/referral_service.dart` | Manages credits, trial state, pending/credited phone number DB |
| `ReferralScreen` | `lib/widgets/referral_screen.dart` | Contact picker, SMS intent launcher, progress view |
| SMS intent sender | `lib/widgets/referral_screen.dart` | `launchUrl(Uri(scheme:'sms', ...))` — url_launcher already in pubspec |
| Phone number normalizer | `lib/services/referral_service.dart` | Strip formatting, normalize to E.164 for reliable matching |
| Phone number check hook | `lib/services/deepseek_api_service.dart` | After report runs, check sender number against pending referrals |
| Trial expiry check | `lib/main.dart` or `SubscriptionService` | On app launch, check if trial has expired → revert to pre_trial_tier |
| Progress badge | `lib/widgets/dashboard_control_pane.dart` | Small X/5 indicator, tappable → opens ReferralScreen |
| Reward popup | `lib/widgets/referral_screen.dart` | Modal shown when credits hit 5 |

---

### Privacy / Permissions Notes

- Contacts permission is ALREADY requested for SMS analysis on Android — reuse it
- Phone numbers must NEVER be uploaded to any server without explicit user consent disclosure
- If using Firestore: only store normalized/hashed phone numbers (e.g. E.164 format, last-7-digits match)
- Add referral program disclosure to privacy policy before launch
- iOS: contacts permission will require a new NSContactsUsageDescription key in Info.plist
  explaining the referral feature

---

### Purchase Source Attribution (already built — June 2026)
The `SubscriptionService.recordPurchaseSource(productId, source)` method already tracks
whether purchases came from `'dashboard'` or `'landing_page'`. When the referral program
launches, add `'referral_reward'` as a third source value for trial activations.

---

### Launch Gate
**Do not build until:**
- [ ] Pro Plus subscription tier is live in both stores
- [ ] Firebase Firestore is set up (or decision made to use local-only storage)
- [ ] App has at least 50 active users (enough to make referrals meaningful)
- [ ] Privacy policy updated to disclose contact/referral data handling

---

## 💡 DR. AIRTA — AI Video Report Presenter (KILLER FEATURE)
**This feature will put the app over the top. Implement in two phases.**

### The Concept
After a report is generated, a sarcastic cartoon doctor character — Dr. AIRTA — delivers a
spoken video summary of the findings. The doctor has zero filter, tells it like it is, and
uses dark humor to cut through the emotional fog the user is in. Think: a cross between
House M.D. and a brutally honest therapist who has seen it all.

Example delivery:
> "Congratulations. Your partner scored in the 94th percentile for gaslighting. That's not
> a red flag — that's a red PARADE. My professional recommendation? Run. Fast. In the other
> direction. You're welcome. That'll be $200."

This is NOT a clinical tone. It is deliberately irreverent, darkly funny, and shockingly
direct — because sometimes people need to hear the truth from someone who isn't walking
on eggshells about it. The humor is the medicine.

---

### Localization — Race-Matched Avatar Per Language
Each of the 16 supported languages gets its own Dr. AIRTA character whose appearance
reflects the primary demographic of that language's speakers. The character is the same
archetype (sarcastic doctor with attitude) but visually represents the culture.

| Language         | Avatar Ethnicity/Presentation         |
|------------------|---------------------------------------|
| English (US/UK)  | White or racially ambiguous — classic TV doctor look |
| Spanish (ES/LATAM)| Latino/Latina                        |
| Portuguese (BR)  | Brazilian — mixed/Afro-Brazilian     |
| French           | French — European                    |
| German           | Northern European                    |
| Italian          | Mediterranean                        |
| Japanese         | East Asian — Japanese                |
| Korean           | East Asian — Korean                  |
| Chinese (Simp.)  | East Asian — Chinese                 |
| Arabic           | Middle Eastern/North African         |
| Hindi            | South Asian — Indian                 |
| Turkish          | Turkish/Central Asian                |
| Russian          | Eastern European/Slavic              |
| Dutch            | Northern European                    |
| Polish           | Eastern European                     |
| Indonesian       | Southeast Asian                      |

**Character creation:** Use AI image generation (Midjourney or DALL-E 3) with a consistent
prompt template:
```
Cartoon doctor character, [ethnicity descriptor], white lab coat, stethoscope,
slightly annoyed expression, raised eyebrow, arms crossed, flat vector illustration style,
colorful background, professional but sarcastic vibe, no text
```
Generate once per language → store as static assets in the app and in the video pipeline.

---

### Phase 1 — In-App Report Video Summary
**Implement with v1.1.0 or as a standalone v1.0.x update**

**Flow:**
1. Report generation completes
2. DeepSeek is called a second time with a special "Dr. AIRTA script" prompt (see below)
3. Script is sent to D-ID or HeyGen API with the localized avatar image
4. API returns an MP4 URL (or file)
5. App displays a "Watch Dr. AIRTA's Summary" button on the report screen
   - User-toggleable ON/OFF in Settings (default: ON)
   - If OFF, report works exactly as it does today — no video, no API call
6. Tapping the button plays the video in a full-screen modal with close button
7. Video is cached locally after first play so it doesn't re-generate on replay

**Dr. AIRTA Script Prompt (sent to DeepSeek after main report):**
```
You are Dr. AIRTA, a sarcastic, brutally honest cartoon doctor with zero filter and dark
humor. You have just reviewed a relationship toxicity report. Write a 45-60 second spoken
video script summarizing the most alarming findings. Be dramatic, funny, and direct.
Use the doctor's voice — clinical observations delivered with comic exasperation.
DO NOT be gentle. DO NOT hedge. The user came to you for the truth.

Report data: {top_3_metrics_with_scores}
Overall toxicity score: {overall_score}/100
Key finding: {primary_finding}

Format: Plain spoken text only. No stage directions. No markdown. 60 words max.
```

**Recommended API: D-ID**
- Cheapest per video (~$0.10–0.25/video at API tier)
- Takes a static cartoon image + text script → outputs talking head MP4
- API is well-documented, Python/REST
- Plan: D-ID Lite (~$5.90/mo) covers early user volume easily
- At scale: API pricing, billed per minute of generated video

**New product ID needed:**
- No new IAP needed — bundle Dr. AIRTA as a Pro tier feature
- Free users get a text summary only; Pro+ users get the video

---

### Phase 2 — Automated Marketing Video Pipeline
**Implement before the 30-day launch push campaign**

**The goal:** Post 2 TikToks + 2 YouTube Shorts per day for 30 days, in each supported
language, fully automated. Zero manual video editing.

**Per-video pipeline (fully automated Python script):**
1. **Script generator** — DeepSeek generates a 45-second "case study" script based on a
   fictional but realistic relationship scenario. Sarcastic Dr. AIRTA tone throughout.
   Rotates through 30 unique scenario templates (one per day).
2. **Avatar video** — HeyGen API renders the localized Dr. AIRTA avatar speaking the script.
   HeyGen chosen for Phase 2 because of its superior animation quality and 175-language TTS.
3. **Compositing** — Python (moviepy) adds:
   - App screenshot montage as background B-roll
   - Animated lower-third with app name + store link
   - Subtitles burned in (same language as script)
   - Formatted to 9:16 vertical (1080×1920) for Shorts/TikTok
4. **Upload** — YouTube Data API auto-uploads as a Short with title, description, tags,
   and language metadata. TikTok upload via their Content Posting API.

**Cost estimate for full 30-day × 16-language campaign:**
- 30 days × 2 videos/day × 16 languages = 960 videos
- Average video: 45 seconds = 0.75 minutes
- 960 × 0.75 = 720 minutes of generated video
- HeyGen API pricing: approximately $0.08–0.15/credit at API tier
- Estimated total: **$150–$250 for the entire campaign**
- This replaces what would cost $50,000+ in traditional video production

**Daily script scenarios (30-day rotation, generated by DeepSeek):**
- Day 1: "The Gaslighter" — partner denies reality
- Day 2: "The Love Bomber" — overwhelming affection that turns controlling
- Day 3: "The Silent Treatment Specialist"
- Day 4: "The Moving Goalpost" — nothing is ever good enough
- Day 5: "The Blame Shifter" — somehow everything is your fault
- ... (25 more scenarios, auto-generated)

**Languages for marketing videos:** All 16, posted to language-specific TikTok/YouTube
accounts or using YouTube's multi-language audio track feature.

---

### Code Components to Build

| Component | File | Phase | Notes |
|-----------|------|-------|-------|
| `DrAirtaScriptService` | `lib/services/dr_airta_script_service.dart` | 1 | Calls DeepSeek for the sarcastic script |
| `DrAirtaVideoService` | `lib/services/dr_airta_video_service.dart` | 1 | Calls D-ID API, caches result |
| Dr. AIRTA avatar images | `assets/avatars/dr_airta_[lang].png` | 1 | 16 AI-generated cartoon images |
| Report screen video button | `lib/widgets/report_viewer_pane.dart` | 1 | "Watch Dr. AIRTA's Summary" button |
| Settings toggle | `lib/widgets/settings_screen.dart` | 1 | User toggle: ON/OFF, default ON |
| Video player modal | `lib/widgets/dr_airta_player.dart` | 1 | Full-screen modal, cached playback |
| Marketing script generator | `marketing_bot/script_generator.py` | 2 | 30-scenario rotation |
| HeyGen video renderer | `marketing_bot/heygen_renderer.py` | 2 | API wrapper for bulk generation |
| Video compositor | `marketing_bot/compositor.py` | 2 | moviepy: screenshots + subtitles + 9:16 |
| YouTube uploader | `marketing_bot/youtube_uploader.py` | 2 | YouTube Data API v3 |
| TikTok uploader | `marketing_bot/tiktok_uploader.py` | 2 | TikTok Content Posting API |
| Campaign scheduler | `marketing_bot/scheduler.py` | 2 | 2 videos/day, auto-run at set time |

---

### API Credentials Needed (at implementation time)

| Service | Purpose | Where to get |
|---------|---------|-------------|
| D-ID API key | Phase 1 in-app videos | https://studio.d-id.com/account-settings |
| HeyGen API key | Phase 2 marketing videos | https://app.heygen.com/settings (API tab) |
| YouTube Data API v3 | Auto-upload Shorts | Google Cloud Console → enable YouTube Data API |
| TikTok Content Posting API | Auto-upload TikToks | https://developers.tiktok.com/products/content-posting-api |

---

### Why This Puts the App Over the Top
1. **No other relationship app does this** — a localized, culturally-matched AI doctor
   character is unprecedented in this category
2. **Virality built in** — users will screenshot and share Dr. AIRTA's brutal assessments.
   "My app just told me my partner is in the 96th percentile for coercive control" is
   extremely shareable content
3. **Emotional resonance** — humor and irreverence make a scary topic approachable. Users
   who might be in denial get the truth delivered in a way that's easier to receive
4. **16 languages × culturally matched avatar** = genuinely global product, not just
   a translated app
5. **Marketing machine** — the same pipeline that powers in-app summaries generates all
   your social media content automatically. One system, two purposes.

---

### Launch Gate for Phase 1
- [ ] D-ID API key obtained
- [ ] 16 avatar images generated (Midjourney/DALL-E — ~2 hours of work)
- [ ] Dr. AIRTA script prompt tuned and tested with real report data
- [ ] Settings toggle implemented
- [ ] Video caching tested on Android and iOS

### Launch Gate for Phase 2
- [ ] Phase 1 live and validated
- [ ] HeyGen API key obtained
- [ ] 30 scenario scripts drafted and approved
- [ ] moviepy compositor tested on all 16 language variants
- [ ] YouTube and TikTok API credentials obtained
- [ ] Test campaign run (1 language, 3 days) before full rollout

---

## 💡 SOCIAL MEDIA AGGREGATOR DASHBOARD (PC Tool)
**Build now — no external dependencies, ready to implement immediately**

### The Concept
A single PyQt desktop application that runs on your PC and aggregates matching posts from
Reddit, YouTube, TikTok, Facebook, and X (Twitter) into one prioritized queue. You work
through them one at a time — one click to open the post and copy the reply draft, one click
to mark it contacted. Full history tracking, activity monitoring, and configurable priority
scoring — all from within the GUI.

### Priority Scoring — Fully Configurable in GUI
All weights are adjustable sliders inside the dashboard. Default values shown:

| Factor | Default Weight | Description |
|--------|---------------|-------------|
| Post recency | 40% | Newer = higher priority. Posts > 24hr old drop significantly |
| Engagement size | 25% | Views/comments/upvotes. Bigger audience = worth more effort |
| Keyword match strength | 20% | More strong toxicity keywords = higher score |
| Platform weight | 10% | User-ranked: Reddit > YouTube > TikTok > X > Facebook (default) |
| New activity since contacted | 5% | Post you replied to got new comments = bump back up |

### Contact Tracking States
Each post moves through these states:
- **New** — just found, not yet actioned
- **Opened** — you clicked to view (reply draft copied to clipboard)
- **Contacted** — you manually marked as replied
- **Has Activity** — you replied, and new comments have appeared since
- **Expired** — post is too old to be worth replying to (configurable threshold)

### Historical Engagement Metrics (tracked over time)
- How many times you contacted posts from this platform/subreddit/channel
- Average response rate (if the platform allows seeing reply engagement)
- Best performing time of day to contact (based on your history)
- Most effective keywords in posts you contacted vs. posts you skipped

### Platform Crawl Methods
| Platform | Method | Notes |
|----------|--------|-------|
| Reddit | PRAW streaming API | Already built in reddit_bot/main.py — reuse |
| YouTube | YouTube Data API v3 search | Free, 10k quota/day, searches by keyword |
| TikTok | TikTok Research API | Free for approved researchers, keyword video search |
| Facebook | Public post scraper | No official API for public post search — use Playwright |
| X (Twitter) | X API v2 free tier | 500k tweet reads/month free, keyword search |

### GUI Layout
```
┌─────────────────────────────────────────────────────────────────┐
│  AIRTA Social Monitor          [▶ Running]  Reddit ✓ YT ✓ TT ✓ │
├──────────────┬──────────────────────────────────────────────────┤
│ QUEUE (47)   │  POST DETAIL                                      │
│              │                                                   │
│ ● #1 Score92 │  Platform: Reddit r/relationship_advice           │
│ ● #2 Score87 │  Score: 92/100  |  Posted: 14 min ago             │
│ ● #3 Score84 │  Engagement: 847 upvotes, 234 comments            │
│ ● #4 Score81 │                                                   │
│ ○ #5 Score76 │  Title: "He denies everything I say happened..."  │
│ ○ #6 Score71 │                                                   │
│   ...        │  DRAFT REPLY:                                     │
│              │  ┌─────────────────────────────────────────────┐  │
│ [Contacted]  │  │ Hey u/username, what you're describing...   │  │
│ [Has Activity│  │ [AIRTA app link]                             │  │
│              │  └─────────────────────────────────────────────┘  │
│              │                                                   │
│              │  [📋 Copy Reply]  [🔗 Open Post]  [✓ Contacted]  │
│              │  [✗ Skip]         [⚑ Flag]        [↻ Regenerate] │
├──────────────┴──────────────────────────────────────────────────┤
│ PRIORITY WEIGHTS  Recency [████░] 40%  Engagement [███░░] 25%  │
│                   Keywords [██░░░] 20%  Platform [█░░░░] 10%   │
│ STATS: Today 12 contacted | This week 67 | Response rate: --   │
└─────────────────────────────────────────────────────────────────┘
```

### Files to Build
| File | Purpose |
|------|---------|
| `social_monitor/main.py` | PyQt app entry point, main window |
| `social_monitor/crawlers/reddit_crawler.py` | Wraps existing reddit_bot logic |
| `social_monitor/crawlers/youtube_crawler.py` | YouTube Data API v3 keyword search |
| `social_monitor/crawlers/tiktok_crawler.py` | TikTok Research API |
| `social_monitor/crawlers/facebook_crawler.py` | Playwright-based public post scraper |
| `social_monitor/crawlers/x_crawler.py` | X API v2 keyword search |
| `social_monitor/priority_engine.py` | Weighted scoring, configurable weights |
| `social_monitor/contact_tracker.py` | SQLite DB — all state, history, stats |
| `social_monitor/reply_generator.py` | Platform-aware draft reply templates |
| `social_monitor/ui/main_window.py` | PyQt main window + queue list |
| `social_monitor/ui/post_detail.py` | Right panel — post detail + reply draft |
| `social_monitor/ui/settings_panel.py` | Priority weight sliders + platform toggles |
| `social_monitor/ui/stats_panel.py` | Historical engagement metrics |
| `social_monitor/.env` | API keys (gitignored) |
| `social_monitor/requirements.txt` | All Python dependencies |

### Build Order
1. Contact tracker (SQLite schema) + priority engine — the data layer
2. Reddit crawler (reuse existing logic)
3. PyQt main window with queue + detail panel
4. Copy/open/mark-contacted workflow
5. Priority weight sliders in settings panel
6. YouTube crawler
7. X crawler
8. TikTok crawler
9. Facebook crawler (most complex — Playwright)
10. Stats panel + historical metrics

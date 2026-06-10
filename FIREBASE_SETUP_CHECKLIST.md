# Firebase Setup Checklist - Quick Start

## Step 1: Create Firebase Project (5 minutes)

1. Go to https://console.firebase.google.com/
2. Click **"Add project"**
3. Project name: `which-partner-is-toxic`
4. Disable Google Analytics (optional)
5. Click **"Create project"**

---

## Step 2: Add Android App (5 minutes)

1. In Firebase Console, click **"Add app"** → **Android icon**
2. **Android package name:** Check your `android/app/build.gradle` for `applicationId`
   - Probably: `com.yourcompany.which_partner_is_toxic`
3. **App nickname:** `Which Partner Is Toxic - Android`
4. Click **"Register app"**
5. **Download `google-services.json`**
6. Place it in: `android/app/google-services.json`
7. Click **"Next"** → **"Next"** → **"Continue to console"**

---

## Step 3: Add iOS App (5 minutes)

1. Click **"Add app"** → **iOS icon**
2. **iOS bundle ID:** Check your `ios/Runner.xcodeproj/project.pbxproj` for `PRODUCT_BUNDLE_IDENTIFIER`
   - Probably: `com.yourcompany.whichPartnerIsToxic`
3. **App nickname:** `Which Partner Is Toxic - iOS`
4. Click **"Register app"**
5. **Download `GoogleService-Info.plist`**
6. Place it in: `ios/Runner/GoogleService-Info.plist`
7. Open `ios/Runner.xcworkspace` in Xcode
8. Drag `GoogleService-Info.plist` into the project (under Runner folder)
9. Click **"Next"** → **"Next"** → **"Continue to console"**

---

## Step 4: Configure Android Build (2 minutes)

### Edit `android/build.gradle`:

Add this to the `dependencies` block inside `buildscript`:

```gradle
buildscript {
    dependencies {
        // ... existing dependencies ...
        classpath 'com.google.gms:google-services:4.4.0'  // ADD THIS LINE
    }
}
```

### Edit `android/app/build.gradle`:

Add this at the **very bottom** of the file:

```gradle
apply plugin: 'com.google.gms.google-services'  // ADD THIS LINE
```

---

## Step 5: Install Dependencies (1 minute)

Run in terminal:

```bash
flutter pub get
```

---

## Step 6: Set Up Remote Config (10 minutes)

1. In Firebase Console, go to **Remote Config** (left sidebar)
2. Click **"Create configuration"**
3. Add these parameters one by one:

### Version Control

| Parameter | Type | Value |
|-----------|------|-------|
| `min_required_version` | String | `1.0.0` |
| `force_update` | Boolean | `false` |
| `update_message` | String | `A new version is available with exciting features!` |
| `android_store_url` | String | `https://play.google.com/store/apps/details?id=YOUR_PACKAGE_NAME` |
| `ios_store_url` | String | `https://apps.apple.com/app/your-app/idYOUR_APP_ID` |

### Pricing

| Parameter | Type | Value |
|-----------|------|-------|
| `standard_tier_price` | String | `9.99` |
| `pro_tier_price` | String | `19.99` |
| `pro_plus_tier_price` | String | `24.99` |
| `one_time_unlock_price` | String | `19.99` |

### Feature Flags

| Parameter | Type | Value |
|-----------|------|-------|
| `pro_tier_enabled` | Boolean | `false` |
| `pro_plus_tier_enabled` | Boolean | `false` |

### Features (Comma-separated strings)

| Parameter | Type | Value |
|-----------|------|-------|
| `standard_tier_features` | String | `Unlimited SMS analysis,Advanced AI insights,PDF report export,Priority support` |
| `pro_tier_features` | String | `Everything in Standard,WhatsApp analysis,Facebook Messenger analysis,Instagram DM analysis,Email analysis,LinkedIn message analysis,Telegram analysis,Twitter/X DM analysis` |
| `pro_plus_tier_features` | String | `Everything in Pro,Discord server analysis,Custom integrations,API access,White-label reports` |
| `supported_platforms` | String | `sms` |

4. Click **"Publish changes"**

---

## Step 7: Test Version Check (5 minutes)

### Test Force Update Screen:

1. In Firebase Remote Config, change:
   - `force_update` → `true`
   - `min_required_version` → `2.0.0`
2. Click **"Publish changes"**
3. Run your app: `flutter run`
4. You should see the force update screen!

### Reset for Launch:

1. Change back:
   - `force_update` → `false`
   - `min_required_version` → `1.0.0`
2. Click **"Publish changes"**

---

## Step 8: Build Release APK (5 minutes)

```bash
flutter build apk --release --dart-define=DEEPSEEK_API_KEY=sk-61422c74411549248f23b4656d4152ae
```

---

## ✅ Checklist Summary

- [ ] Created Firebase project
- [ ] Added Android app
- [ ] Downloaded `google-services.json` → `android/app/`
- [ ] Added iOS app
- [ ] Downloaded `GoogleService-Info.plist` → `ios/Runner/`
- [ ] Added to Xcode project
- [ ] Updated `android/build.gradle`
- [ ] Updated `android/app/build.gradle`
- [ ] Ran `flutter pub get`
- [ ] Set up Remote Config parameters
- [ ] Tested force update screen
- [ ] Reset Remote Config for launch
- [ ] Built release APK

---

## 🚀 You're Ready to Launch!

Once all checkboxes are checked, you can:
1. Submit to Google Play Store
2. Submit to Apple App Store
3. Start marketing!

When you're ready to add multi-platform support (v1.1.0):
1. Integrate Unipile
2. Build v1.1.0
3. Submit to stores
4. Update Firebase Remote Config:
   - `min_required_version` → `1.1.0`
   - `force_update` → `true`
   - `pro_tier_enabled` → `true`
   - `supported_platforms` → `sms,whatsapp,messenger,instagram,email,linkedin,telegram,twitter`
5. All users automatically forced to update!

---

## 🆘 Troubleshooting

### "Firebase initialization failed"
- Check `google-services.json` is in `android/app/`
- Check `GoogleService-Info.plist` is in `ios/Runner/` and added to Xcode
- Verify package name matches Firebase project

### "Remote Config not updating"
- Wait 12 hours for changes to propagate
- Or clear app data and restart
- Check internet connection

### "Version check not working"
- Verify `pubspec.yaml` version is `1.0.0+1`
- Check Firebase has `min_required_version: 1.0.0`
- Check `force_update: false` for launch

### Build errors after adding Firebase
- Run `flutter clean`
- Run `flutter pub get`
- Rebuild

---

**Total setup time: ~30 minutes**

**You now have:**
- ✅ Force update system
- ✅ Remote pricing control
- ✅ Feature flags
- ✅ Platform toggles
- ✅ No code changes needed for future updates!

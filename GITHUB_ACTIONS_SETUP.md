# GitHub Actions Setup - Build iOS Without a Mac!

This guide shows you how to use GitHub's **FREE** macOS runners to build your iOS app without owning a Mac.

## How It Works

1. You push code to GitHub
2. GitHub Actions automatically runs on a Mac in the cloud
3. Builds both Android APK and iOS IPA
4. You download the built files

**Cost:** $0 (GitHub Free tier includes 2,000 minutes/month of macOS runner time)

---

## Setup Steps

### 1. Create a GitHub Repository

```bash
# Initialize git in your project (if not already done)
cd "c:\My Projects\Which partner is toxic\which_partner_is_toxic"
git init
git add .
git commit -m "Initial commit"

# Create a new repository on GitHub.com
# Then push your code:
git remote add origin https://github.com/YOUR_USERNAME/which_partner_is_toxic.git
git branch -M main
git push -u origin main
```

### 2. Add DeepSeek API Key as Secret

1. Go to your GitHub repository
2. Click **Settings** → **Secrets and variables** → **Actions**
3. Click **New repository secret**
4. Name: `DEEPSEEK_API_KEY`
5. Value: `sk-61422c74411549248f23b4656d4152ae`
6. Click **Add secret**

### 3. Workflow is Already Created!

The workflow file is already in your project at:
`.github/workflows/build.yml`

It will automatically run when you push code to GitHub.

---

## Using the Workflow

### Automatic Builds (on every push)

```bash
# Make changes to your code
git add .
git commit -m "Added new feature"
git push

# GitHub Actions will automatically:
# 1. Build Android APK
# 2. Build iOS IPA
# 3. Make them available for download
```

### Manual Builds (on demand)

1. Go to your GitHub repository
2. Click **Actions** tab
3. Click **Build Flutter App** workflow
4. Click **Run workflow** button
5. Select branch and click **Run workflow**

### Download Built Files

1. Go to **Actions** tab
2. Click on the latest workflow run
3. Scroll down to **Artifacts**
4. Download:
   - `android-apk` - Your Android APK
   - `ios-ipa` - Your iOS IPA

---

## What Gets Built

### Android APK
- **File:** `app-release.apk`
- **Size:** ~82MB
- **Ready to:** Install on Android devices or upload to Play Store

### iOS IPA
- **File:** `app-release.ipa`
- **Size:** ~50-100MB
- **Note:** Not code-signed (for testing only)
- **To install:** Need to sign with your Apple Developer certificate

---

## Workflow Details

The workflow does:

1. **Checkout code** - Gets your latest code
2. **Setup Flutter** - Installs Flutter SDK
3. **Get dependencies** - Runs `flutter pub get`
4. **Build APK** - Runs `flutter build apk --release`
5. **Build IPA** - Runs `flutter build ios --release --no-codesign`
6. **Upload artifacts** - Makes files available for download

### Build Time
- **Android:** ~5-10 minutes
- **iOS:** ~10-15 minutes
- **Total:** ~20 minutes per build

### Free Tier Limits
- **2,000 minutes/month** of macOS runner time
- **~100 iOS builds per month** for free
- Android builds use Linux runners (10x more minutes available)

---

## Code Signing for iOS (Required for App Store)

The IPA built by GitHub Actions is **not code-signed**. To submit to App Store:

### Option 1: Sign Locally (Still Need a Mac)
```bash
# Download the IPA from GitHub Actions
# Sign it with Xcode on a Mac
```

### Option 2: Sign in GitHub Actions (Advanced)

Add these secrets to GitHub:
- `IOS_CERTIFICATE_BASE64` - Your signing certificate
- `IOS_PROVISIONING_PROFILE_BASE64` - Your provisioning profile
- `IOS_CERTIFICATE_PASSWORD` - Certificate password

Then update the workflow to sign the IPA automatically.

### Option 3: Use Codemagic or Fastlane

Services like Codemagic can handle signing automatically.

---

## Troubleshooting

### Build Fails
- Check the **Actions** tab for error logs
- Common issues:
  - Missing dependencies
  - Syntax errors in code
  - API key not set correctly

### iOS Build Fails
- Make sure `ios/` folder is committed to git
- Check that `pubspec.yaml` has all dependencies
- Verify Flutter version compatibility

### Can't Download Artifacts
- Artifacts expire after 30 days
- Re-run the workflow to generate new builds

---

## Advanced: Auto-Upload to Stores

You can extend the workflow to automatically upload builds:

### Auto-Upload to Google Play (Android)
```yaml
- name: Upload to Play Store
  uses: r0adkll/upload-google-play@v1
  with:
    serviceAccountJsonPlainText: ${{ secrets.PLAY_STORE_JSON }}
    packageName: com.yourapp.package
    releaseFiles: build/app/outputs/flutter-apk/app-release.apk
    track: internal
```

### Auto-Upload to TestFlight (iOS)
```yaml
- name: Upload to TestFlight
  uses: apple-actions/upload-testflight-build@v1
  with:
    app-path: app-release.ipa
    issuer-id: ${{ secrets.APPSTORE_ISSUER_ID }}
    api-key-id: ${{ secrets.APPSTORE_API_KEY_ID }}
    api-private-key: ${{ secrets.APPSTORE_API_PRIVATE_KEY }}
```

---

## Summary

✅ **No Mac needed** - GitHub provides free macOS runners  
✅ **Automatic builds** - Every push triggers a build  
✅ **Both platforms** - Android APK and iOS IPA  
✅ **Free tier** - 2,000 minutes/month  
✅ **Easy downloads** - Artifacts available in Actions tab  

You can now build iOS apps from your Windows PC! 🎉

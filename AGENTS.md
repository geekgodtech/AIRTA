# AIRTA Project — Agent Rules & Memory

## MANDATORY READING — START OF EVERY SESSION
1. Read `C:\My Projects\AIRTA\.devin\SESSION_LOG.md` — last session summary
2. Read `C:\My Projects\AIRTA\PROJECT_VISION.md` — ALL feature ideas, roadmap, and future plans
3. Run session start check (confirms git/ADB/project dir are live)

**Nothing lives in anyone's head. Everything is in those two files.**

## Project Overview
AIRTA (AI Relationship Toxicity Analyzer) is a Flutter app for Android and iOS.
- **Package:** `com.airta.airelationshiptoxicityanalyzer`
- **GitHub:** https://github.com/geekgodtech/AIRTA
- **Demo URL:** https://geekgodtech.github.io/AIRTA/releases/airta-demo.apk
- **Flutter version:** 3.44.0 (stable)
- **Dart version:** 3.12.0

## Deploy Workflow — ALWAYS USE THIS AFTER CODE CHANGES

After every code change (or when asked to deploy/build/install/push), run:

```powershell
powershell -ExecutionPolicy Bypass -File "C:\My Projects\AIRTA\deploy.ps1"
```

This single command:
1. Builds the demo APK (signed, DEMO_MODE=true)
2. Pushes updated APK to GitHub Pages
3. Uninstalls old version from connected phone
4. Installs new version
5. Launches the app on device

### Flags
- `-release` — production build (no DEMO_MODE, skips GitHub Pages update)
- `-noinstall` — build + push only, skip phone

### Important: Git must use Windows Git for pushes
```powershell
& "C:\Program Files\Git\bin\git.exe" -C "C:\My Projects\AIRTA" push origin main
```
MSYS2 git (`c:\devkitPro\msys2\usr\bin\git.exe`) does NOT have stored GitHub credentials.

## Credentials (Local Only — Never Commit)
Stored in `deploy.ps1` and `run_with_secrets.ps1` (both gitignored):
- **Keystore:** `android/app/airta-release.keystore`
- **Key alias:** `airta`
- **Store/Key password:** `Kennyloggins1!`
- **DeepSeek API key:** `sk-61422c74411549248f23b4656d4152ae`

## Build Commands
```powershell
# Demo APK (DEMO_MODE=true, all features unlocked, no paywall)
flutter build apk --release --dart-define=DEEPSEEK_API_KEY=sk-61422c74411549248f23b4656d4152ae --dart-define=DEMO_MODE=true

# Production APK
flutter build apk --release --dart-define=DEEPSEEK_API_KEY=sk-61422c74411549248f23b4656d4152ae

# Production AAB (for Play Store)
flutter build appbundle --release --dart-define=DEEPSEEK_API_KEY=sk-61422c74411549248f23b4656d4152ae
```

## ADB Phone Management
```powershell
adb devices                                          # list connected devices
adb uninstall com.airta.airelationshiptoxicityanalyzer  # uninstall from phone
adb install build\app\outputs\flutter-apk\app-release.apk  # install to phone
adb shell am start -n com.airta.airelationshiptoxicityanalyzer/com.airta.airelationshiptoxicityanalyzer.MainActivity  # launch app
```

## Project Structure
- `lib/` — Flutter/Dart source code
- `android/` — Android native config
- `ios/` — iOS native config
- `docs/` — GitHub Pages site (index, privacy, demo page, releases/)
- `docs/releases/airta-demo.apk` — Live demo APK served via GitHub Pages
- `Builds/` — Archived production builds (gitignored)
- `Screenshots/` — Store listing screenshots, 16 languages (gitignored)
- `Store Listing/` — App store text and metadata
- `assets/icons/` — App icons

## Signing
- Keystore file: `android/app/airta-release.keystore`
- build.gradle.kts reads from env vars: `KEYSTORE_PATH`, `STORE_PASSWORD`, `KEY_ALIAS`, `KEY_PASSWORD`
- NDK version: `28.2.13676358`

## GitHub Actions
- Workflow: `.github/workflows/build.yml`
- Disabled auto-trigger (manual `workflow_dispatch` only)
- Secrets needed: `KEYSTORE_BASE64`, `STORE_PASSWORD`, `KEY_ALIAS`, `KEY_PASSWORD`, `DEEPSEEK_API_KEY`

## Play Protect Warning
Installing via `adb install` (direct USB) does NOT trigger Play Protect warnings.
Installing a sideloaded APK downloaded from a URL DOES trigger a Play Protect warning — this is normal and not a signing issue.

## Screenshot Pipeline
- Script: `screenshots.py` (Playwright-based)
- Output: `Screenshots/Android/<Language>/` and `Screenshots/Apple/<Language>/`
- 16 languages, multiple device sizes per platform
- Firebase Remote Config causes errors in headless screenshot mode — expected/harmless

## Firebase — NEEDS SETUP (HIGH PRIORITY)
**Read `FIREBASE_SETUP_TODO.md` for the full soup-to-nuts checklist.**

Quick summary of what needs to be done:
1. Enable Firestore Database in Firebase Console
2. Register a Web App to get a real `appId` (needed for web forms + admin tool)
3. Create all 18 Remote Config parameters
4. Deploy Firestore security rules
5. Update placeholder appId in: `docs/submit-50.html`, `docs/submit-100.html`, `admin_tool/lib/main.dart`

Firebase MCP server is configured in `~/.codeium/windsurf/mcp_config.json` — needs `npx firebase-tools login` to authenticate first.

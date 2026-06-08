---
description: Build AIRTA demo APK, push to GitHub Pages, uninstall old version from phone, install new version, and launch app
---

# AIRTA Deploy Workflow

When the user asks to deploy, build and install the app, push a new demo, or says anything like "deploy", "build and install", "push to phone", "update the demo", run the following steps automatically without asking for confirmation.

## Deploy Script

The deploy script lives at `C:\My Projects\AIRTA\deploy.ps1` and is gitignored (contains signing credentials).

Run it with PowerShell:

```powershell
# Standard: demo build → GitHub Pages → uninstall phone → install phone → launch app
powershell -ExecutionPolicy Bypass -File "C:\My Projects\AIRTA\deploy.ps1"

# Production release build (signs with keystore, installs on phone, skips GitHub Pages)
powershell -ExecutionPolicy Bypass -File "C:\My Projects\AIRTA\deploy.ps1" -release

# Build + GitHub Pages push only, skip phone install
powershell -ExecutionPolicy Bypass -File "C:\My Projects\AIRTA\deploy.ps1" -noinstall
```

## What the script does (in order)

1. Sets signing env vars (keystore, passwords, DeepSeek API key)
2. Detects connected Android device via `adb devices`
3. Runs `flutter build apk --release` with `DEMO_MODE=true` (or without for `-release`)
4. Copies APK to `docs/releases/airta-demo.apk` and pushes to GitHub Pages (demo only)
5. Runs `adb uninstall com.airta.airelationshiptoxicityanalyzer` on the phone
6. Runs `adb install` of the new APK
7. Launches the app on device via `adb shell am start`

## Key details

- **Package ID:** `com.airta.airelationshiptoxicityanalyzer`
- **Keystore:** `C:\My Projects\AIRTA\android\app\airta-release.keystore`
- **Key alias:** `airta`
- **Demo APK URL:** https://geekgodtech.github.io/AIRTA/releases/airta-demo.apk
- **Git push uses:** `C:\Program Files\Git\bin\git.exe` (Windows Git with stored credentials — NOT MSYS2 git which lacks auth)
- **Credentials file:** `C:\My Projects\AIRTA\deploy.ps1` (gitignored, never commit)

## If deploy.ps1 is missing

Recreate it from `C:\My Projects\AIRTA\run_with_secrets.ps1` (also gitignored) which has the credentials, combined with the build + adb steps above.

## After every code change

The expected workflow is:
1. Make code changes
2. Commit changes to git
3. Run deploy workflow to test on phone immediately

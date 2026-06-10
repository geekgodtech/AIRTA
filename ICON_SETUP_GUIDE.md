# AIRTA Application Icon Setup Guide

## Problem
The EXE files were showing generic Windows icons because they didn't have proper multi-size ICO files embedded during build.

## Solution
Generated proper multi-size ICO files (16x16 through 256x256) and set up build configurations to embed them.

---

## What Was Done

### 1. Generated Multi-Size Icons
Used the Icon Maker script to generate proper ICO files with multiple resolutions:
- Source: `assets/icons/app_icon.png` (102KB)
- Output: 45KB ICO files with 10 embedded sizes
- Sizes: 16x16, 20x20, 24x24, 32x32, 40x40, 48x48, 64x64, 96x96, 128x128, 256x256

### 2. Updated Icon Locations
| Application | Icon Location |
|-------------|---------------|
| Launcher (AirtaSuite) | `icons/launcher.ico` |
| Admin Tool | `icons/admin_tool.ico` + `admin_tool/windows/runner/resources/app_icon.ico` |
| Video Studio | `icons/video_studio.ico` |
| Social Monitor | `icons/social_monitor.ico` |

### 3. Updated Build Configurations
- `AIRTA-Video-Studio.spec`: Changed `icon='NONE'` to `icon='icons/video_studio.ico'`
- Created `AIRTA-Admin-Tool.spec` for admin tool builds
- Admin Tool (Flutter): Uses `windows/runner/resources/app_icon.ico`

---

## How to Rebuild EXEs with Icons

### Quick Rebuild (All EXEs)
Run the batch file:
```batch
C:\My Projects\AIRTA\tools\rebuild_exes_with_icons.bat
```

### Manual Rebuild (Individual)

#### Admin Tool (Flutter)
```powershell
cd "C:\My Projects\AIRTA\admin_tool"
flutter build windows --release

# Copy to AirtaSuite
copy "build\windows\x64\runner\Release\admin_tool.exe" "..\AirtaSuite\tools\"
```

#### Video Studio (PyInstaller)
```powershell
cd "C:\My Projects\AIRTA"
pyinstaller AIRTA-Video-Studio.spec --clean
```

#### Social Monitor (PyInstaller)
```powershell
cd "C:\My Projects\AIRTA"
pyinstaller AIRTA-Social-Monitor.spec --clean
```

---

## How to Update Icons in Future

### If You Change the Logo:
1. Update `assets/icons/app_icon.png` with new design
2. Run icon generation:
   ```powershell
   # Copy new icon to Icon Maker
   copy assets\icons\app_icon.png "..\Icon Maker\source\icon.png"

   # Generate multi-size ICOs
   python "..\Icon Maker\Icon script.py"

   # Copy to AIRTA project
   python tools\copy_generated_icons.py
   ```
3. Rebuild EXEs:
   ```batch
   tools\rebuild_exes_with_icons.bat
   ```

### If Icons Break After Update:
Just rebuild the EXEs - the icon paths are now configured:
```batch
tools\rebuild_exes_with_icons.bat
```

---

## File Locations Summary

### Source Files
- `assets/icons/app_icon.png` - Master source image (1024x1024)

### Generated Icons
- `icons/launcher.ico` - AirtaSuite launcher
- `icons/admin_tool.ico` - Membership Admin Tool
- `icons/video_studio.ico` - Video Studio
- `icons/social_monitor.ico` - Social Monitor

### Build Configs
- `AIRTA-Video-Studio.spec` - PyInstaller spec for Video Studio
- `AIRTA-Admin-Tool.spec` - PyInstaller spec for Admin Tool
- `admin_tool/windows/runner/Runner.rc` - Flutter Windows resources

### Scripts
- `tools/generate_app_icons.py` - Generate multi-size ICOs
- `tools/copy_generated_icons.py` - Copy icons to project
- `tools/rebuild_exes_with_icons.bat` - Rebuild all EXEs

---

## Troubleshooting

### EXE Still Shows Generic Icon
- Icon cache needs refresh: Restart Windows or rename the EXE temporarily
- Build didn't complete: Check build output for errors
- Wrong icon path: Verify .spec file has correct icon path

### Icon Looks Blurry in Taskbar
- ICO needs more sizes: Regenerate with the Icon Maker script
- Minimum needed: 16x16, 32x32, 48x48, 256x256

### Build Fails
- PyInstaller not installed: `pip install pyinstaller`
- Flutter not set up: Run `flutter doctor` to check
- Icon file locked: Close any programs using the EXE

---

## Current Status

| Component | Icon Status | Location |
|-----------|-------------|----------|
| launcher.ico | 45KB multi-size | `icons/` |
| admin_tool.ico | 45KB multi-size | `icons/` + `admin_tool/windows/runner/resources/` |
| video_studio.ico | 45KB multi-size | `icons/` |
| social_monitor.ico | 45KB multi-size | `icons/` |

**Next Step:** Run `rebuild_exes_with_icons.bat` to embed icons into the EXEs.

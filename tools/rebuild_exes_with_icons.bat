@echo off
REM Rebuild all AIRTA EXEs with proper icons
REM Run this after generating new icons with generate_app_icons.py

echo ========================================
echo AIRTA EXE Rebuild with Icons
echo ========================================
echo.

REM Check if icons exist
if not exist "C:\My Projects\AIRTA\icons\launcher.ico" (
    echo ERROR: Icons not found! Run generate_app_icons.py first.
    exit /b 1
)

echo Step 1: Rebuilding AIRTA Admin Tool (Flutter Windows)...
echo --------------------------------------------------------
cd "C:\My Projects\AIRTA\admin_tool"
flutter build windows --release
echo.

REM Copy the built EXE to AirtaSuite	ools
if exist "C:\My Projects\AIRTA\admin_tool\build\windows\x64\runner\Release\admin_tool.exe" (
    echo Copying admin_tool.exe to AirtaSuite\tools...
    copy /Y "C:\My Projects\AIRTA\admin_tool\build\windows\x64\runner\Release\admin_tool.exe" "C:\My Projects\AIRTA\AirtaSuite\tools\admin_tool.exe"
    echo Done!
) else (
    echo WARNING: admin_tool.exe not found after build
)
echo.

echo Step 2: Rebuilding AIRTA Video Studio (PyInstaller)...
echo --------------------------------------------------------
cd "C:\My Projects\AIRTA"
pyinstaller "AIRTA-Video-Studio.spec" --clean
echo.

if exist "C:\My Projects\AIRTA\dist\AIRTA-Video-Studio.exe" (
    echo Video Studio EXE built successfully with new icon!
) else (
    echo WARNING: Video Studio EXE not found after build
)
echo.

echo ========================================
echo Rebuild Complete!
echo ========================================
echo.
echo Summary:
echo   - Icons are now embedded in the EXEs
echo   - admin_tool.exe: C:\My Projects\AIRTA\AirtaSuite\tools\
echo   - Video Studio: C:\My Projects\AIRTA\dist\
echo.
echo Next: Test the launchers to see the new icons!
echo.
pause

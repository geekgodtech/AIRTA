#!/usr/bin/env python3
"""Copy generated icons from Icon Maker to AIRTA project."""

import os
import shutil
from pathlib import Path
from datetime import datetime

# Find the latest result folder
icon_maker_result = Path("C:/My Projects/Icon Maker/result")
result_folders = [d for d in icon_maker_result.iterdir() if d.is_dir()]
latest_folder = max(result_folders, key=lambda d: d.stat().st_mtime)

print(f"Latest result folder: {latest_folder.name}")

# Find the generated ICO files
left_ico = latest_folder / "Dual New Iconset" / "Left" / "New Icon.ico"
right_ico = latest_folder / "Dual New Iconset" / "Right" / "New Icon.ico"

# Destination paths
airta_icons_dir = Path("C:/My Projects/AIRTA/icons")
airta_icons_dir.mkdir(parents=True, exist_ok=True)

# Copy to various locations
destinations = {
    "launcher.ico": airta_icons_dir / "launcher.ico",
    "admin_tool.ico": airta_icons_dir / "admin_tool.ico",
    "video_studio.ico": airta_icons_dir / "video_studio.ico",
    "social_monitor.ico": airta_icons_dir / "social_monitor.ico",
    "app_icon.ico": Path("C:/My Projects/AIRTA/admin_tool/windows/runner/resources/app_icon.ico"),
}

print("\nCopying icons...")

# Use the Right icon (usually better for single icons)
source_ico = right_ico if right_ico.exists() else left_ico

if source_ico.exists():
    for name, dest in destinations.items():
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source_ico, dest)
        size = dest.stat().st_size
        print(f"  {name}: {size} bytes -> {dest}")
    print("\n✓ All icons copied successfully!")
    print("\nNext step: Rebuild your EXEs to embed the new icons.")
else:
    print(f"ERROR: Source icon not found at {source_ico}")
    print("Available files in latest folder:")
    for f in latest_folder.rglob("*"):
        if f.is_file():
            print(f"  {f.relative_to(latest_folder)}: {f.stat().st_size} bytes")

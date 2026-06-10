"""
Generate multi-size ICO files for AIRTA Windows applications.
Uses the favicon as source and creates proper multi-resolution icons.
"""

import os
import sys
from pathlib import Path
from PIL import Image

# Windows icon sizes needed for proper taskbar/display
ICO_SIZES = [(16, 16), (32, 32), (48, 48), (64, 64), (128, 128), (256, 256)]

# Output paths for each application
OUTPUT_PATHS = {
    'launcher': Path('C:/My Projects/AIRTA/icons/launcher.ico'),
    'admin_tool': Path('C:/My Projects/AIRTA/admin_tool/windows/runner/resources/app_icon.ico'),
    'video_studio': Path('C:/My Projects/AIRTA/icons/video_studio.ico'),
    'social_monitor': Path('C:/My Projects/AIRTA/icons/social_monitor.ico'),
}

# Source images (fallback chain)
SOURCE_FILES = [
    Path('C:/My Projects/AIRTA/docs/favicon.ico'),
    Path('C:/My Projects/AIRTA/assets/icons/app_icon.png'),
    Path('C:/My Projects/AIRTA/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png'),
]


def find_source_image():
    """Find the best source image for icon generation."""
    for src in SOURCE_FILES:
        if src.exists():
            print(f"Found source: {src}")
            return src
    print("ERROR: No source image found!")
    sys.exit(1)


def create_multi_size_ico(source_path: Path, output_path: Path, app_name: str):
    """Create a multi-size ICO file from source image."""
    print(f"\nGenerating {app_name} icon...")
    print(f"  Source: {source_path}")
    print(f"  Output: {output_path}")

    # Load source image
    img = Image.open(source_path)

    # Convert to RGBA if needed
    if img.mode != 'RGBA':
        img = img.convert('RGBA')

    # Create output directory if needed
    output_path.parent.mkdir(parents=True, exist_ok=True)

    # Generate all sizes and save as ICO
    icons = []
    for size in ICO_SIZES:
        resized = img.resize(size, Image.LANCZOS)
        icons.append(resized)
        print(f"    - {size[0]}x{size[1]}")

    # Save multi-size ICO
    icons[0].save(
        output_path,
        format='ICO',
        sizes=ICO_SIZES,
        append_images=icons[1:]
    )

    print(f"  ✓ Created: {output_path} ({len(ICO_SIZES)} sizes)")


def main():
    print("=" * 60)
    print("AIRTA Application Icon Generator")
    print("=" * 60)

    # Find source image
    source = find_source_image()

    # Generate icons for each application
    for app_name, output_path in OUTPUT_PATHS.items():
        try:
            create_multi_size_ico(source, output_path, app_name)
        except Exception as e:
            print(f"  ✗ Error creating {app_name}: {e}")

    print("\n" + "=" * 60)
    print("Icon generation complete!")
    print("=" * 60)
    print("\nNext steps:")
    print("1. Rebuild the EXEs to embed the new icons")
    print("2. For Flutter apps (admin_tool): flutter build windows")
    print("3. For PyInstaller apps: pyinstaller <spec file>")


if __name__ == '__main__':
    try:
        from PIL import Image
    except ImportError:
        print("Installing Pillow...")
        os.system('pip install pillow')
        from PIL import Image

    main()
    input("\nPress Enter to exit...")

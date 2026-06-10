# -*- mode: python ; coding: utf-8 -*-


a = Analysis(
    ['..\\AIRTA Video Studio\\auto_setup.py'],
    pathex=[],
    binaries=[],
    datas=[('../AIRTA Video Studio/core', 'core'), ('../AIRTA Video Studio/ui', 'ui'), ('../AIRTA Video Studio/.env.template', '.')],
    hiddenimports=[],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    noarchive=False,
    optimize=0,
)
pyz = PYZ(a.pure)

exe = EXE(
    pyz,
    a.scripts,
    a.binaries,
    a.datas,
    [],
    name='AIRTA-Video-Studio',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    upx_exclude=[],
    runtime_tmpdir=None,
    console=False,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
    icon='icons/video_studio.ico',
)

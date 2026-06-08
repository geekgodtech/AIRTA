import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:window_manager/window_manager.dart';

import 'package:airta/services/language_service.dart';

/// Whether the app is running in automated screenshot capture mode.
/// Enable with: --dart-define=SCREENSHOT_MODE=true
const bool kScreenshotMode =
    bool.fromEnvironment('SCREENSHOT_MODE', defaultValue: false);

/// Optional override for where screenshots are written.
/// Defaults to "<current working directory>/Screenshots".
const String _kScreenshotDirOverride =
    String.fromEnvironment('SCREENSHOT_DIR', defaultValue: '');

/// A single target screenshot dimension.
///
/// [width]/[height] are the final PHYSICAL pixel dimensions required by the
/// store. [devicePixelRatio] is the device's pixel density: the app is laid
/// out at the LOGICAL size (width/dpr x height/dpr) so it renders the same
/// layout a real device would (phones stack, tablets show grids), then the
/// capture is upscaled by [devicePixelRatio] to produce the physical pixels.
class ScreenshotSize {
  final int width;
  final int height;
  final String name;
  final String platform; // "Apple" or "Android"
  final double devicePixelRatio;

  const ScreenshotSize({
    required this.width,
    required this.height,
    required this.name,
    required this.platform,
    this.devicePixelRatio = 1.0,
  });

  double get logicalWidth => width / devicePixelRatio;
  double get logicalHeight => height / devicePixelRatio;
}

/// A language to capture localized screenshots for.
class ScreenshotLanguage {
  final String code;
  final String name;

  const ScreenshotLanguage({required this.code, required this.name});
}

const List<ScreenshotSize> kScreenshotSizes = [
  // Apple iOS (iPhone) — DPR 3 (logical ~390-430 wide => stacked phone layout)
  ScreenshotSize(width: 1290, height: 2796, name: 'iPhone_6.7in_ProMax', platform: 'Apple', devicePixelRatio: 3.0),
  ScreenshotSize(width: 1242, height: 2688, name: 'iPhone_6.5in', platform: 'Apple', devicePixelRatio: 3.0),
  ScreenshotSize(width: 1242, height: 2208, name: 'iPhone_5.5in', platform: 'Apple', devicePixelRatio: 3.0),
  ScreenshotSize(width: 1170, height: 2532, name: 'iPhone_6.1in', platform: 'Apple', devicePixelRatio: 3.0),
  ScreenshotSize(width: 750, height: 1334, name: 'iPhone_4.7in_SE', platform: 'Apple', devicePixelRatio: 2.0),
  // Apple iPad — DPR 2 (logical ~810-1024 wide => tablet grid layout)
  ScreenshotSize(width: 2048, height: 2732, name: 'iPad_Pro_12.9in', platform: 'Apple', devicePixelRatio: 2.0),
  ScreenshotSize(width: 1668, height: 2388, name: 'iPad_Pro_11in', platform: 'Apple', devicePixelRatio: 2.0),
  ScreenshotSize(width: 1620, height: 2160, name: 'iPad_10.2in', platform: 'Apple', devicePixelRatio: 2.0),
  // Android phones — DPR 3/4 (logical ~360 wide => stacked phone layout)
  ScreenshotSize(width: 1080, height: 1920, name: 'Android_Phone_1080p', platform: 'Android', devicePixelRatio: 3.0),
  ScreenshotSize(width: 1440, height: 2560, name: 'Android_Phone_QHD', platform: 'Android', devicePixelRatio: 4.0),
  // Android tablets — DPR 2 (logical ~600-1024 wide => tablet grid layout)
  ScreenshotSize(width: 1200, height: 1920, name: 'Android_Tablet_7in', platform: 'Android', devicePixelRatio: 2.0),
  ScreenshotSize(width: 1600, height: 2560, name: 'Android_Tablet_10in', platform: 'Android', devicePixelRatio: 2.0),
  ScreenshotSize(width: 2048, height: 2732, name: 'Android_Tablet_Large', platform: 'Android', devicePixelRatio: 2.0),
];

const List<ScreenshotLanguage> kScreenshotLanguages = [
  ScreenshotLanguage(code: 'en', name: 'English'),
  ScreenshotLanguage(code: 'es', name: 'Spanish'),
  ScreenshotLanguage(code: 'fr', name: 'French'),
  ScreenshotLanguage(code: 'de', name: 'German'),
  ScreenshotLanguage(code: 'it', name: 'Italian'),
  ScreenshotLanguage(code: 'pt', name: 'Portuguese'),
  ScreenshotLanguage(code: 'nl', name: 'Dutch'),
  ScreenshotLanguage(code: 'pl', name: 'Polish'),
  ScreenshotLanguage(code: 'ru', name: 'Russian'),
  ScreenshotLanguage(code: 'tr', name: 'Turkish'),
  ScreenshotLanguage(code: 'uk', name: 'Ukrainian'),
  ScreenshotLanguage(code: 'ja', name: 'Japanese'),
  ScreenshotLanguage(code: 'ko', name: 'Korean'),
  ScreenshotLanguage(code: 'hi', name: 'Hindi'),
  ScreenshotLanguage(code: 'ar', name: 'Arabic'),
  ScreenshotLanguage(code: 'zh', name: 'Chinese'),
];

/// Drives the automated screenshot capture process.
///
/// The capture is performed by resizing the window to the target size,
/// waiting for the app to render, then capturing the visible content.
class ScreenshotAutomation {
  ScreenshotAutomation._();
  static final ScreenshotAutomation instance = ScreenshotAutomation._();

  final ScreenshotController controller = ScreenshotController();

  /// Human readable status for the on-screen overlay.
  final ValueNotifier<String> status = ValueNotifier<String>('Preparing...');

  /// Current window size to trigger rebuilds when resized
  final ValueNotifier<Size> windowSize = ValueNotifier<Size>(Size.zero);

  bool _started = false;
  String _currentTarget = '';

  String get _outputRoot {
    if (_kScreenshotDirOverride.isNotEmpty) return _kScreenshotDirOverride;
    return '${Directory.current.path}${Platform.pathSeparator}Screenshots';
  }

  /// Wait for the engine to render the next frame so layout/paint reflects
  /// the latest size and locale before we capture.
  Future<void> _settle({int frames = 3, int extraMs = 7000}) async {
    for (var i = 0; i < frames; i++) {
      await WidgetsBinding.instance.endOfFrame;
    }
    await Future<void>.delayed(Duration(milliseconds: extraMs));
  }

  /// Run the full capture sequence across all languages and sizes.
  Future<void> run() async {
    if (_started) return;
    _started = true;

    // Set window title to English to avoid CJK rendering issues in OS title bar
    try {
      await windowManager.setTitle('AIRTA');
    } catch (e) {
      debugPrint('[Screenshot] Failed to set window title: $e');
    }

    final root = _outputRoot;
    debugPrint('[Screenshot] Output directory: $root');

    // Capture any build/layout errors to a log file so the exact cause of
    // gray (ErrorWidget) renders can be diagnosed.
    final errorLog = File('$root${Platform.pathSeparator}errors.log');
    await errorLog.create(recursive: true);
    final seenErrors = <String>{};
    final priorOnError = FlutterError.onError;
    FlutterError.onError = (FlutterErrorDetails details) {
      priorOnError?.call(details);
      final msg = details.exceptionAsString();
      if (seenErrors.add(msg)) {
        errorLog.writeAsStringSync(
          '[$_currentTarget] $msg\n${details.stack.toString().split('\n').take(8).join('\n')}\n\n',
          mode: FileMode.append,
        );
      }
    };

    var done = 0;
    final total = kScreenshotLanguages.length * kScreenshotSizes.length;

    for (final lang in kScreenshotLanguages) {
      status.value = 'Switching language: ${lang.name}';
      await LanguageService().setLanguage(lang.code);
      // Let the MaterialApp rebuild with the new locale.
      await _settle(frames: 4, extraMs: 7000);

      for (final size in kScreenshotSizes) {
        done++;
        status.value =
            '[$done/$total] ${lang.name} - ${size.name} (${size.width}x${size.height})';
        _currentTarget = '${lang.name}/${size.name} logical ${size.logicalWidth.toInt()}x${size.logicalHeight.toInt()}';
        debugPrint('[Screenshot] ${status.value}');

        // Lay the app out at the device's LOGICAL size so it renders the same
        // layout a real device would (phones stack, tablets show grids). The
        // OS window is NOT resized; the stage renders off-window and is scaled
        // to fit the visible window.
        windowSize.value = Size(size.logicalWidth, size.logicalHeight);

        await _settle(extraMs: 7000);

        try {
          // Capture upscaled by the device pixel ratio so the output is the
          // exact physical pixel size required by the store.
          final Uint8List? bytes =
              await controller.capture(pixelRatio: size.devicePixelRatio);
          if (bytes == null) {
            debugPrint('[Screenshot] capture returned null for ${size.name}');
            continue;
          }

          final dirPath =
              '$root${Platform.pathSeparator}${size.platform}${Platform.pathSeparator}${lang.name}';
          final fileName =
              '${size.name}_${size.width}x${size.height}.png';
          final file = File('$dirPath${Platform.pathSeparator}$fileName');
          await file.create(recursive: true);
          await file.writeAsBytes(bytes);
          debugPrint('[Screenshot] Saved ${file.path}');
        } catch (e) {
          debugPrint('[Screenshot] Error capturing ${size.name}: $e');
        }
      }
    }

    status.value = 'Complete! $total screenshots saved to:\n$_outputRoot';
    debugPrint('[Screenshot] DONE. Saved to $_outputRoot');
  }
}

/// Renders [child] at the current target LOGICAL size (from
/// [ScreenshotAutomation.windowSize]) inside a [Screenshot]/[RepaintBoundary],
/// overriding [MediaQuery] so the app lays out exactly as a real device would.
/// A [FittedBox] scales the stage to fit the visible window, while the capture
/// is recorded at the logical size (then upscaled by devicePixelRatio at
/// capture time to produce the physical pixels).
class ScreenshotStage extends StatelessWidget {
  final Widget child;

  const ScreenshotStage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final baseMq = MediaQuery.of(context);
    return ValueListenableBuilder<Size>(
      valueListenable: ScreenshotAutomation.instance.windowSize,
      builder: (context, size, _) {
        // Before the first target is set, fall back to the real window size so
        // the app always renders something.
        final target = (size.width > 0 && size.height > 0) ? size : baseMq.size;

        return FittedBox(
          fit: BoxFit.contain,
          alignment: Alignment.center,
          child: Screenshot(
            controller: ScreenshotAutomation.instance.controller,
            child: SizedBox(
              width: target.width,
              height: target.height,
              child: MediaQuery(
                data: baseMq.copyWith(
                  size: target,
                  devicePixelRatio: 1.0,
                  padding: EdgeInsets.zero,
                  viewPadding: EdgeInsets.zero,
                  viewInsets: EdgeInsets.zero,
                ),
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Small non-captured overlay that shows progress in the live window.
class ScreenshotStatusOverlay extends StatelessWidget {
  const ScreenshotStatusOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 12,
      bottom: 12,
      child: IgnorePointer(
        child: ValueListenableBuilder<String>(
          valueListenable: ScreenshotAutomation.instance.status,
          builder: (context, status, _) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                status,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            );
          },
        ),
      ),
    );
  }
}

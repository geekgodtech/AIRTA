import 'dart:async';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:provider/provider.dart';
import 'package:airta/controllers/toxicity_analyzer_controller.dart';
import 'package:airta/models.dart';
import 'package:airta/l10n/app_localizations.dart';

/// Screen for capturing iOS SMS messages via screenshots
/// Since iOS doesn't allow direct SMS access, we guide users through
/// a screenshot-based capture process similar to MsgKeep
class IosSmssCaptureScreen extends StatefulWidget {
  const IosSmssCaptureScreen({super.key});

  @override
  State<IosSmssCaptureScreen> createState() => _IosSmsCaptureScreenState();
}

class _IosSmsCaptureScreenState extends State<IosSmssCaptureScreen> {
  bool _isCapturing = false;
  bool _isProcessing = false;
  int _capturedCount = 0;
  final List<AssetEntity> _screenshots = [];
  Timer? _screenshotMonitor;
  DateTime? _captureStartTime;
  final TextRecognizer _textRecognizer = TextRecognizer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LayoutBuilder(
          builder: (context, constraints) {
            final isNarrow = constraints.maxWidth < 400;
            return Text(
              'iOS SMS Capture',
              style: TextStyle(
                fontSize: isNarrow ? 18 : 20,
                height: 1.0,
                letterSpacing: isNarrow ? -0.5 : 0,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            );
          },
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildInstructions(),
              const SizedBox(height: 24),
              _buildCaptureStatus(),
              const SizedBox(height: 24),
              _buildActionButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInstructions() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  'How to Capture iOS Messages',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              '1. Open the Messages app and select the conversation\n'
              '2. Scroll to the oldest message you want to analyze\n'
              '3. Tap "Start Capture" below\n'
              '4. Take screenshots as you scroll through the conversation\n'
              '5. When done, tap "Finish & Process"',
              style: TextStyle(height: 1.5),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.lightbulb_outline,
                    size: 20,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Tip: Overlap screenshots slightly to ensure no messages are missed',
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCaptureStatus() {
    if (!_isCapturing && _capturedCount == 0) {
      return const SizedBox.shrink();
    }

    return Card(
      color: _isCapturing
          ? Theme.of(context).colorScheme.primaryContainer
          : Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            if (_isCapturing)
              const CircularProgressIndicator()
            else
              Icon(
                Icons.check_circle_outline,
                size: 48,
                color: Theme.of(context).colorScheme.primary,
              ),
            const SizedBox(height: 12),
            Text(
              _isCapturing ? 'Capturing...' : 'Capture Complete',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              '$_capturedCount screenshot${_capturedCount == 1 ? '' : 's'} captured',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (!_isCapturing && _capturedCount == 0)
          ElevatedButton.icon(
            onPressed: _startCapture,
            icon: const Icon(Icons.camera_alt),
            label: const Text('Start Capture'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(56),
            ),
          ),
        if (_isCapturing) ...[
          ElevatedButton.icon(
            onPressed: _finishCapture,
            icon: const Icon(Icons.stop),
            label: const Text('Finish & Process'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(56),
            ),
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: _cancelCapture,
            icon: const Icon(Icons.cancel),
            label: const Text('Cancel'),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size.fromHeight(56),
            ),
          ),
        ],
        if (!_isCapturing && _capturedCount > 0) ...[
          ElevatedButton.icon(
            onPressed: _processScreenshots,
            icon: const Icon(Icons.auto_fix_high),
            label: const Text('Process Screenshots'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(56),
            ),
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: _resetCapture,
            icon: const Icon(Icons.refresh),
            label: const Text('Start Over'),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size.fromHeight(56),
            ),
          ),
        ],
      ],
    );
  }

  @override
  void dispose() {
    _screenshotMonitor?.cancel();
    _textRecognizer.close();
    super.dispose();
  }

  Future<void> _startCapture() async {
    // Request photo library permission
    final permission = await PhotoManager.requestPermissionExtend();
    if (!permission.isAuth) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.photoPermissionRequired),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    setState(() {
      _isCapturing = true;
      _capturedCount = 0;
      _screenshots.clear();
      _captureStartTime = DateTime.now();
    });

    // Show instructions dialog
    if (mounted) {
      showDialog(
        context: context,
        builder: (context) {
          final l10n = AppLocalizations.of(context)!;
          return AlertDialog(
            title: Text(l10n.readyToCapture),
            content: Text(l10n.readyToCaptureBody),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.gotIt),
              ),
            ],
          );
        },
      );
    }

    // Start monitoring for new screenshots
    _startScreenshotListener();
  }

  void _startScreenshotListener() {
    _screenshotMonitor = Timer.periodic(const Duration(seconds: 2), (
      timer,
    ) async {
      if (!_isCapturing) {
        timer.cancel();
        return;
      }

      // Get recent screenshots
      final albums = await PhotoManager.getAssetPathList(
        type: RequestType.image,
        filterOption: FilterOptionGroup(
          imageOption: const FilterOption(
            sizeConstraint: SizeConstraint(ignoreSize: true),
          ),
          createTimeCond: DateTimeCond(
            min: _captureStartTime!,
            max: DateTime.now(),
          ),
        ),
      );

      if (albums.isEmpty) return;

      final recentAssets = await albums.first.getAssetListRange(
        start: 0,
        end: 100,
      );

      // Filter for screenshots taken after capture started
      final newScreenshots = recentAssets.where((asset) {
        return asset.createDateTime.isAfter(_captureStartTime!);
      }).toList();

      if (newScreenshots.length > _screenshots.length) {
        setState(() {
          _screenshots.clear();
          _screenshots.addAll(newScreenshots);
          _capturedCount = _screenshots.length;
        });
      }
    });
  }

  void _finishCapture() {
    _screenshotMonitor?.cancel();
    setState(() {
      _isCapturing = false;
    });

    if (_capturedCount == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'No screenshots captured. Please take screenshots of your messages.',
          ),
          backgroundColor: Colors.orange,
        ),
      );
    }
  }

  void _cancelCapture() {
    _screenshotMonitor?.cancel();
    setState(() {
      _isCapturing = false;
      _capturedCount = 0;
      _screenshots.clear();
    });
  }

  void _resetCapture() {
    setState(() {
      _capturedCount = 0;
      _screenshots.clear();
    });
  }

  Future<void> _processScreenshots() async {
    if (_screenshots.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.noScreenshotsToProcess)),
      );
      return;
    }

    setState(() => _isProcessing = true);

    try {
      // Extract text from all screenshots using OCR
      final List<String> allText = [];

      for (int i = 0; i < _screenshots.length; i++) {
        final asset = _screenshots[i];
        final file = await asset.file;

        if (file != null) {
          final inputImage = InputImage.fromFilePath(file.path);
          final recognizedText = await _textRecognizer.processImage(inputImage);
          allText.add(recognizedText.text);
        }

        // Update progress
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(AppLocalizations.of(context)!.processingScreenshot(i + 1, _screenshots.length)),
              duration: const Duration(milliseconds: 500),
            ),
          );
        }
      }

      // Parse the extracted text into messages
      final messages = _parseMessagesFromText(allText.join('\n\n'));

      if (messages.isEmpty) {
        if (mounted) {
          showDialog(
            context: context,
            builder: (context) {
              final l10n = AppLocalizations.of(context)!;
              return AlertDialog(
                title: Text(l10n.noMessagesFound),
                content: Text(l10n.noMessagesFoundBody),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(l10n.ok),
                  ),
                ],
              );
            },
          );
        }
        return;
      }

      // Create conversation thread
      final thread = ConversationThread(
        fileSource: 'iOS SMS Screenshot Capture',
        messages: messages,
      );

      // Load into controller
      if (mounted) {
        context.read<ToxicityAnalyzerController>().loadSmsThread(thread);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.loadedMessages(messages.length)),
            backgroundColor: Colors.green,
          ),
        );

        // Go back to dashboard
        Navigator.pop(context);
      }
    } catch (e) {
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) {
            final l10n = AppLocalizations.of(context)!;
            return AlertDialog(
              title: Text(l10n.processingError),
              content: Text(l10n.processingErrorBody),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(l10n.ok),
                ),
              ],
            );
          },
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isProcessing = false);
      }
    }
  }

  List<ChatMessage> _parseMessagesFromText(String text) {
    final messages = <ChatMessage>[];
    final lines = text.split('\n');

    // Simple parsing - look for message patterns
    // iOS messages typically show time, then sender name, then message
    // This is a basic implementation - can be enhanced

    String? currentSender;
    String? currentMessage;
    DateTime? currentTime;

    for (final line in lines) {
      final trimmed = line.trim();
      if (trimmed.isEmpty) continue;

      // Try to detect timestamp (various formats)
      final timeMatch = RegExp(
        r'(\d{1,2}):(\d{2})\s*(AM|PM)?',
      ).firstMatch(trimmed);
      if (timeMatch != null) {
        currentTime =
            DateTime.now(); // Simplified - use current date with extracted time
      }

      // If line looks like a message (not too short, not a time)
      if (trimmed.length > 3 && timeMatch == null) {
        if (currentMessage == null) {
          currentSender = 'User'; // Simplified sender detection
          currentMessage = trimmed;
        } else {
          currentMessage += ' $trimmed';
        }

        // Add message when we hit a new timestamp or end
        if (currentMessage.length > 10) {
          messages.add(
            ChatMessage(
              senderName: currentSender ?? 'Unknown',
              textContent: currentMessage,
              timestamp: currentTime ?? DateTime.now(),
            ),
          );
          currentMessage = null;
          currentSender = null;
        }
      }
    }

    return messages;
  }
}

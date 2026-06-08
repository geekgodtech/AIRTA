import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'dart:html' as html;
import 'dart:js' as js;

class ScreenshotSizer extends StatefulWidget {
  const ScreenshotSizer({super.key});

  @override
  State<ScreenshotSizer> createState() => _ScreenshotSizerState();
}

class _ScreenshotSizerState extends State<ScreenshotSizer> {
  final TextEditingController _widthController = TextEditingController(text: '1280');
  final TextEditingController _heightController = TextEditingController(text: '720');
  final ScreenshotController _screenshotController = ScreenshotController();
  
  bool _isAutoRunning = false;
  int _currentSizeIndex = 0;
  String _status = 'Ready';

  // Screenshot sizes for Apple and Google
  final List<Map<String, dynamic>> _screenshotSizes = [
    // Apple iOS
    {'width': 1242, 'height': 2688, 'name': 'iPhone_6.5in', 'platform': 'Apple'},
    {'width': 1290, 'height': 2796, 'name': 'iPhone_6.7in_ProMax', 'platform': 'Apple'},
    {'width': 1242, 'height': 2208, 'name': 'iPhone_5.5in', 'platform': 'Apple'},
    {'width': 1170, 'height': 2532, 'name': 'iPhone_6.1in', 'platform': 'Apple'},
    {'width': 750, 'height': 1334, 'name': 'iPhone_4.7in_SE', 'platform': 'Apple'},
    // Apple iPad
    {'width': 2048, 'height': 2732, 'name': 'iPad_Pro_12.9in', 'platform': 'Apple'},
    {'width': 1668, 'height': 2388, 'name': 'iPad_Pro_11in', 'platform': 'Apple'},
    {'width': 1620, 'height': 2160, 'name': 'iPad_10.2in', 'platform': 'Apple'},
    // Android
    {'width': 1080, 'height': 1920, 'name': 'Android_Phone_1080p', 'platform': 'Android'},
    {'width': 1440, 'height': 2560, 'name': 'Android_Phone_QHD', 'platform': 'Android'},
    {'width': 1200, 'height': 1920, 'name': 'Android_Tablet_7in', 'platform': 'Android'},
    {'width': 1600, 'height': 2560, 'name': 'Android_Tablet_10in', 'platform': 'Android'},
    {'width': 2048, 'height': 2732, 'name': 'Android_Tablet_Large', 'platform': 'Android'},
  ];

  @override
  void dispose() {
    _widthController.dispose();
    _heightController.dispose();
    super.dispose();
  }

  void _applySize() {
    final width = int.tryParse(_widthController.text);
    final height = int.tryParse(_heightController.text);
    
    if (width != null && height != null && width > 0 && height > 0) {
      _resizeWindow(width, height);
    }
  }

  void _resizeWindow(int width, int height) {
    // Resize browser window using JavaScript
    js.context.callMethod('resizeTo', [width, height]);
    setState(() => _status = 'Resized to ${width}x$height}');
  }

  Future<void> _takeScreenshot() async {
    try {
      final screenshot = await _screenshotController.capture();
      if (screenshot != null) {
        _downloadScreenshot(screenshot);
      }
    } catch (e) {
      setState(() => _status = 'Error: $e');
    }
  }

  void _downloadScreenshot(Uint8List imageBytes) {
    final currentSize = _screenshotSizes[_currentSizeIndex];
    final blob = html.Blob([imageBytes]);
    final url = html.Url.createObjectUrl(blob);
    
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', '${currentSize['name']}_${currentSize['width']}x${currentSize['height']}.png')
      ..click();
    
    html.Url.revokeObjectUrl(url);
    setState(() => _status = 'Saved: ${currentSize['name']}');
  }

  Future<void> _startAutoScreenshot() async {
    if (_isAutoRunning) return;
    
    setState(() {
      _isAutoRunning = true;
      _currentSizeIndex = 0;
      _status = 'Starting screenshot sequence...';
    });

    for (int i = 0; i < _screenshotSizes.length; i++) {
      setState(() {
        _currentSizeIndex = i;
        _status = 'Resize window to ${_screenshotSizes[i]['width']}x${_screenshotSizes[i]['height']} and click "Next"';
      });

      // Update input fields with current size
      _widthController.text = _screenshotSizes[i]['width'].toString();
      _heightController.text = _screenshotSizes[i]['height'].toString();

      // Wait for user to resize window and click next
      await Future.delayed(const Duration(seconds: 30));
    }

    setState(() {
      _isAutoRunning = false;
      _status = 'Screenshot sequence complete!';
    });
  }

  void _nextScreenshot() async {
    if (_currentSizeIndex < _screenshotSizes.length - 1) {
      setState(() {
        _currentSizeIndex++;
        _status = 'Resize window to ${_screenshotSizes[_currentSizeIndex]['width']}x${_screenshotSizes[_currentSizeIndex]['height']} and click "Next"';
      });

      _widthController.text = _screenshotSizes[_currentSizeIndex]['width'].toString();
      _heightController.text = _screenshotSizes[_currentSizeIndex]['height'].toString();
    } else {
      setState(() {
        _status = 'Screenshot sequence complete!';
      });
    }
  }

  Future<void> _captureCurrent() async {
    await _takeScreenshot();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 16,
      top: 16,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 350),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(color: Colors.white.withOpacity(0.3), width: 1),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  '📸 Screenshot Sizer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: _isAutoRunning ? Colors.orange : Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _isAutoRunning ? 'Running' : 'Ready',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                _status,
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 11,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Width:',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                      TextField(
                        controller: _widthController,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white, fontSize: 12),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          isDense: true,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Height:',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                      TextField(
                        controller: _heightController,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white, fontSize: 12),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          isDense: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _isAutoRunning ? null : _applySize,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5865F2),
                      minimumSize: const Size.fromHeight(36),
                    ),
                    child: const Text(
                      'Resize',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _isAutoRunning ? null : _captureCurrent,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size.fromHeight(36),
                    ),
                    child: const Text(
                      'Capture',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _isAutoRunning ? null : _nextScreenshot,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size.fromHeight(36),
                    ),
                    child: const Text(
                      'Next Size',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _isAutoRunning ? null : _startAutoScreenshot,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size.fromHeight(36),
                    ),
                    child: const Text(
                      'Start Sequence',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue.withOpacity(0.5)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '📋 Instructions:',
                    style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '1. Press F12 → Ctrl+Shift+M (Device Mode)',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  const Text(
                    '2. Enter target dimensions in Device Mode',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  const Text(
                    '3. Click "Capture" to save screenshot',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  const Text(
                    '4. Click "Next Size" for next dimension',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Current target: ${_screenshotSizes[_currentSizeIndex]['width']}x${_screenshotSizes[_currentSizeIndex]['height']} - ${_screenshotSizes[_currentSizeIndex]['name']}',
                    style: const TextStyle(color: Colors.yellow, fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Divider(color: Colors.grey),
            const SizedBox(height: 8),
            const Text(
              'Screenshot sequence:',
              style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...List.generate(_screenshotSizes.length, (index) {
              final size = _screenshotSizes[index];
              final isCurrent = index == _currentSizeIndex && _isAutoRunning;
              return Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: isCurrent ? Colors.orange : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        '${size['name']} (${size['width']}x${size['height']}) - ${size['platform']}',
                        style: TextStyle(
                          color: isCurrent ? Colors.orange : Colors.grey[400],
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

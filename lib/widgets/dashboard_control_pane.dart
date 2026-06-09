import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:airta/controllers/toxicity_analyzer_controller.dart';
import 'package:airta/l10n/app_localizations.dart';
import 'package:airta/l10n/app_localizations_extension.dart';
import 'package:airta/models.dart';
import 'package:airta/services/subscription_service.dart';
import 'package:airta/services/screenshot_automation.dart';
import 'package:airta/widgets/membership_landing_page.dart';
import 'package:airta/widgets/sms_conversation_picker.dart';
import 'package:airta/widgets/ios_sms_capture_screen.dart';
import 'package:airta/widgets/discord_server_picker.dart';
import 'package:airta/widgets/dark_mode_switch.dart';
import 'package:airta/widgets/discord_setup_help.dart';
import 'package:airta/services/remote_config_service.dart';
import 'package:airta/services/custom_metric_service.dart';
// UNIPILE INTEGRATION - COMMENTED OUT PENDING BUSINESS NEGOTIATION
// Uncomment these imports if Unipile deal is finalized:
// import 'package:airta/widgets/unipile_auth_view.dart';
// import 'package:airta/widgets/unipile_conversation_picker.dart';
// import 'package:airta/widgets/platform_credentials_page.dart'; // UNUSED - for Pro tiers later

class DashboardControlPane extends StatefulWidget {
  const DashboardControlPane({super.key});

  @override
  State<DashboardControlPane> createState() => _DashboardControlPaneState();
}

class _DashboardControlPaneState extends State<DashboardControlPane> {
  final ScrollController _scrollController = ScrollController();
  bool _showScrollToTop = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    
    // Listen for error messages and show them as SnackBars
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final controller = context.read<ToxicityAnalyzerController>();
      controller.addListener(_onControllerChanged);
    });
  }
  
  void _onControllerChanged() {
    final controller = context.read<ToxicityAnalyzerController>();
    final l10n = AppLocalizations.of(context)!;
    if (controller.errorMessage != null && mounted) {
      // Check if this is the no messages in date range error
      final String errorText;
      if (controller.errorMessage!.contains('No messages found in the selected date range')) {
        errorText = l10n.noMessagesInDateRange;
      } else {
        errorText = controller.errorMessage!;
      }
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorText),
          backgroundColor: Theme.of(context).colorScheme.error,
          duration: const Duration(seconds: 5),
          action: SnackBarAction(
            label: l10n.clearSelectedDateRange,
            onPressed: () => controller.clearDateRange(),
          ),
        ),
      );
      // Clear the error so it doesn't show again
      controller.clearError();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    // Remove controller listener
    final controller = context.read<ToxicityAnalyzerController>();
    controller.removeListener(_onControllerChanged);
    super.dispose();
  }

  void _onScroll() {
    // Show button when scrolled down more than 200 pixels
    if (_scrollController.offset > 200 && !_showScrollToTop) {
      setState(() => _showScrollToTop = true);
    } else if (_scrollController.offset <= 200 && _showScrollToTop) {
      setState(() => _showScrollToTop = false);
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    // In screenshot mode, use the automation's windowSize if set; otherwise use MediaQuery
    final ssWidth = ScreenshotAutomation.instance.windowSize.value.width;
    final screenWidth = (kScreenshotMode && ssWidth > 0) ? ssWidth : mq.size.width;
    final actionColumnCount = _responsiveColumnCount(screenWidth).clamp(1, 2);
    final isWide = screenWidth >= 520;
    final isNarrow = screenWidth < 400;

    return SafeArea(
      child: Stack(
        children: [
          Consumer<ToxicityAnalyzerController>(
            builder: (context, controller, child) {
              return SingleChildScrollView(
                controller: _scrollController,
                padding: const EdgeInsets.all(16),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 12),
                      // Responsive button layout - 2x2 on wide, 1x4 on narrow
                      // Order: Select SMS, Select file, Analyze, Random
                      _ConversationSelectionSection(
                        controller: controller,
                        isWide: isWide,
                      ),
                      const SizedBox(height: 20),
                      _DateRangeFilterSection(controller: controller),
                      const SizedBox(height: 16),
                      _MetricSelectorSection(controller: controller),
                    ],
                  ),
                ),
              );
            },
          ),
          // Scroll to top button
          if (_showScrollToTop)
            Positioned(
              right: 16,
              bottom: 80,
              child: FloatingActionButton(
                onPressed: _scrollToTop,
                tooltip: 'Scroll to top',
                child: const Icon(Icons.arrow_upward),
              ),
            ),
        ],
      ),
    );
  }
}

int _responsiveColumnCount(double width) {
  if (width >= 1050) {
    return 4;
  }

  if (width >= 760) {
    return 3;
  }

  if (width >= 520) {
    return 2;
  }

  return 1;
}

int _metricColumnCount(double width) {
  if (width >= 1050) {
    return 6;
  }

  if (width >= 760) {
    return 5;
  }

  if (width >= 520) {
    return 3;
  }

  return 1;
}

class _ResponsiveButtonGrid extends StatelessWidget {
  final int columnCount;
  final List<Widget> children;

  const _ResponsiveButtonGrid({
    required this.columnCount,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    // In screenshot mode, use the automation's windowSize if set; otherwise use MediaQuery
    final ssWidth = ScreenshotAutomation.instance.windowSize.value.width;
    final maxWidth = (kScreenshotMode && ssWidth > 0) ? ssWidth : mq.size.width;
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: children
          .map(
            (child) => SizedBox(
              width: (maxWidth - (12 * (columnCount - 1))) /
                  columnCount,
              child: child,
            ),
          )
          .toList(),
    );
  }
}

class _RandomAnalysisSection extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _RandomAnalysisSection({required this.controller});

  @override
  Widget build(BuildContext context) {
    final canRun = controller.activeThread != null &&
        !controller.isAnalyzing &&
        !controller.isRandomizingMetrics &&
        !controller.isIngesting;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 240),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: controller.isRandomizingMetrics
                ? LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.tertiary,
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary,
                    ],
                  )
                : null,
            boxShadow: controller.isRandomizingMetrics
                ? [
                    BoxShadow(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.35),
                      blurRadius: 18,
                      spreadRadius: 2,
                    ),
                  ]
                : null,
          ),
          child: GestureDetector(
            onLongPress: canRun
                ? () {
                    HapticFeedback.mediumImpact();
                    controller.isCurrentReportUnlocked = true;
                    controller.selectRandomMetricsAndExecuteAnalysis();
                  }
                : null,
            child: ElevatedButton.icon(
              onPressed:
                  canRun ? controller.selectRandomMetricsAndExecuteAnalysis : null,
              icon: const Icon(Icons.help_outline),
              label: Text(
                controller.isRandomizingMetrics
                    ? AppLocalizations.of(context)!.spinningMetricWheel
                    : canRun
                        ? AppLocalizations.of(context)!.analyzeRandomMetrics(controller.randomMetricsCount)
                        : AppLocalizations.of(context)!.loadConversationToAnalyze,
                textAlign: TextAlign.center,
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _RandomMetricsSlider extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _RandomMetricsSlider({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, child) {
        return SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 2,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 12),
          ),
          child: Slider(
            value: controller.randomMetricsCount.toDouble(),
            min: 2,
            max: 20,
            divisions: 18,
            label: controller.randomMetricsCount.toString(),
            onChanged: (value) {
              controller.setRandomMetricsCount(value.toInt());
            },
          ),
        );
      },
    );
  }
}

class _TextingApplicationButton extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _TextingApplicationButton({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: controller.isIngesting
          ? null
          : () => _openSmsConversationPicker(context),
      icon: controller.isIngesting
          ? const SizedBox.square(
              dimension: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const Icon(Icons.sms_outlined),
      label: Text(AppLocalizations.of(context)!.selectSMS,
          textAlign: TextAlign.center),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  Future<void> _openSmsConversationPicker(BuildContext context) async {
    try {
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            if (Platform.isIOS) {
              return const IosSmssCaptureScreen();
            } else {
              return SmsConversationPicker(controller: controller);
            }
          },
        ),
      );
    } catch (e) {
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) {
            final l10n = AppLocalizations.of(context)!;
            return AlertDialog(
              title: Text(l10n.unableToOpenConversations),
              content: Text(l10n.unableToOpenConversationsBody),
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
    }
  }
}

class _DiscordButton extends StatefulWidget {
  final ToxicityAnalyzerController controller;

  const _DiscordButton({required this.controller});

  @override
  State<_DiscordButton> createState() => _DiscordButtonState();
}

class _DiscordButtonState extends State<_DiscordButton> {
  bool _discordEnabled = false;

  ToxicityAnalyzerController get controller => widget.controller;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final canUse = _discordEnabled;

    return Row(
      children: [
        Checkbox(
          value: _discordEnabled,
          onChanged: (val) {
            setState(() {
              _discordEnabled = val ?? false;
            });
          },
        ),
        const SizedBox(width: 8),
        Flexible(
          child: ElevatedButton.icon(
            onPressed: controller.isIngesting || !canUse
                ? null
                : () => _openDiscordPicker(context),
            icon: controller.isIngesting
                ? const SizedBox.square(
                    dimension: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.discord, color: Color(0xFF5865F2)),
            label: Text(AppLocalizations.of(context)!.selectDiscordChannel,
                textAlign: TextAlign.center),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF5865F2),
              foregroundColor: Colors.white,
              minimumSize: const Size.fromHeight(56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        IconButton(
          onPressed: () => _showDiscordHelp(context),
          icon: const Icon(Icons.help_outline),
          tooltip: 'Setup Help',
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
          ),
        ),
      ],
    );
  }

  Future<void> _openDiscordPicker(BuildContext context) async {
    try {
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DiscordServerPicker(
            controller: controller,
          ),
        ),
      );
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to open Discord picker: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _showDiscordHelp(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const DiscordSetupHelp(),
    );
  }
}

class _FromFileButton extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _FromFileButton({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: controller.isIngesting ? null : () => _pickFile(context),
      icon: controller.isIngesting
          ? const SizedBox.square(
              dimension: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const Icon(Icons.file_upload_outlined),
      label: Text(AppLocalizations.of(context)!.selectFile,
          textAlign: TextAlign.center),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  Future<void> _pickFile(BuildContext context) async {
    // UNIPILE INTEGRATION - COMMENTED OUT PENDING BUSINESS NEGOTIATION
    // Uncomment this block if Unipile deal is finalized
    // final subscriptionService = context.read<SubscriptionService>();
    // final tier = subscriptionService.activeTier;
    // Pro and Pro Plus members get Unipile integration
    // if (tier == MembershipTier.pro || tier == MembershipTier.proPlus) {
    //   _launchUnipileAuth(context);
    //   return;
    // }

    // Free and Standard members get basic file picker (SMS only)
    // TODO: For now, all tiers use file picker until Unipile or alternative is ready
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['txt', 'doc', 'docx', 'pdf'],
        allowMultiple: false,
      );

      if (result == null || result.files.isEmpty) {
        return; // User cancelled
      }

      final file = result.files.first;

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.selectedFile(file.name)),
            duration: const Duration(seconds: 2),
          ),
        );
      }

      // Read file content to validate it's SMS and not other platforms
      String? fileContent;
      if (file.path != null) {
        try {
          final fileBytes = await File(file.path!).readAsBytes();
          fileContent = utf8.decode(fileBytes, allowMalformed: true);
        } catch (_) {}
      } else if (file.bytes != null) {
        fileContent = utf8.decode(file.bytes!, allowMalformed: true);
      }

      // Validate it's not from other messaging platforms
      if (fileContent != null) {
        final validationError = _validateSmsFile(fileContent, file.name);
        if (validationError != null) {
          if (context.mounted) {
            showDialog(
              context: context,
              builder: (context) {
                final l10n = AppLocalizations.of(context)!;
                return AlertDialog(
                  title: Text(l10n.invalidFile),
                  content: Text(validationError),
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
      }

      // TODO: Parse the file and load it into the controller
      // For now, just show a message
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) {
            final l10n = AppLocalizations.of(context)!;
            return AlertDialog(
              title: Text(l10n.fileImport),
              content: Text(l10n.fileImportNotImplemented),
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
    } catch (e) {
      if (context.mounted) {
        final l10n = AppLocalizations.of(context)!;
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(l10n.error),
            content: Text(l10n.errorPickingFile),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.ok),
              ),
            ],
          ),
        );
      }
    }
  }

  // UNIPILE INTEGRATION - COMMENTED OUT PENDING BUSINESS NEGOTIATION
  // Uncomment this method if Unipile deal is finalized
  // Also uncomment the imports at the top:
  // - import 'package:airta/widgets/unipile_auth_view.dart';
  // - import 'package:airta/widgets/unipile_conversation_picker.dart';
  /*
  Future<void> _launchUnipileAuth(BuildContext context) async {
    // Navigate to Unipile auth screen
    final result = await Navigator.of(context).push<bool>(
      MaterialPageRoute(
        builder: (context) => const UnipileAuthView(),
      ),
    );

    if (result == true && context.mounted) {
      // Auth successful, navigate to conversation picker
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => UnipileConversationPicker(
            controller: controller,
          ),
        ),
      );
    }
  }
  */

  /// Validates that the file is an SMS export and not from other messaging platforms
  /// Returns error message if invalid, null if valid
  String? _validateSmsFile(String content, String filename) {
    final lowerContent = content.toLowerCase();
    final lowerFilename = filename.toLowerCase();

    // WhatsApp detection - look for export format patterns
    // WhatsApp exports have format: [12/25/23, 3:45 PM] Name: message
    if (lowerFilename.contains('whatsapp') ||
        RegExp(
          r'\[\d{1,2}/\d{1,2}/\d{2,4},\s*\d{1,2}:\d{2}',
        ).hasMatch(content) ||
        lowerContent.contains('this message was deleted') ||
        lowerContent.contains('messages and calls are end-to-end encrypted')) {
      return 'WhatsApp chat exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze WhatsApp conversations.';
    }

    // Telegram detection - look for export format
    // Telegram exports often have specific JSON structure or export tool signatures
    if (lowerFilename.contains('telegram') ||
        lowerContent.contains('"type": "message"') &&
            lowerContent.contains('"from"') ||
        lowerContent.contains('telegram export')) {
      return 'Telegram chat exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze Telegram conversations.';
    }

    // Facebook Messenger detection - look for JSON export format
    if (lowerFilename.contains('messenger') ||
        lowerFilename.contains('facebook') ||
        lowerContent.contains('"sender_name"') &&
            lowerContent.contains('"timestamp_ms"') ||
        lowerContent.contains('facebook messenger')) {
      return 'Facebook Messenger exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze Messenger conversations.';
    }

    // Instagram DM detection
    if (lowerFilename.contains('instagram') ||
        lowerContent.contains('"participants"') &&
            lowerContent.contains('"instagram')) {
      return 'Instagram DM exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze Instagram conversations.';
    }

    // LinkedIn detection
    if (lowerFilename.contains('linkedin') ||
        lowerContent.contains('linkedin.com/messaging')) {
      return 'LinkedIn message exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze LinkedIn conversations.';
    }

    // Discord detection - look for export tool signatures or JSON format
    if (lowerFilename.contains('discord') ||
        lowerContent.contains('discordchatexporter') ||
        lowerContent.contains('"guild"') &&
            lowerContent.contains('"channel"') &&
            lowerContent.contains('"messages"') ||
        lowerContent.contains('discord - ') &&
            lowerContent.contains(' [') &&
            lowerContent.contains('] ')) {
      return 'Discord chat exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro Plus membership (\$24.99/month) to analyze Discord conversations.\n'
          'Pro Plus includes everything in Pro (\$19.99/month) plus Discord analysis for only \$4.99 more.';
    }

    // Slack detection - look for export format
    if (lowerFilename.contains('slack') ||
        lowerContent.contains('"client_msg_id"') &&
            lowerContent.contains('"type": "message"') ||
        lowerContent.contains('slack export')) {
      return 'Slack message exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze Slack conversations.';
    }

    // Signal detection
    if (lowerFilename.contains('signal') ||
        lowerContent.contains('signal backup') ||
        lowerContent.contains('signal export')) {
      return 'Signal chat exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze Signal conversations.';
    }

    // WeChat detection
    if (lowerFilename.contains('wechat') ||
        lowerContent.contains('wechat export')) {
      return 'WeChat exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze WeChat conversations.';
    }

    // Snapchat detection
    if (lowerFilename.contains('snapchat') ||
        lowerContent.contains('snapchat data')) {
      return 'Snapchat exports are not supported with the SMS import feature.\n\n'
          'Please use the Pro membership (\$19.99/month) to analyze Snapchat conversations.';
    }

    return null; // Valid SMS file
  }
}

// _GoProButton - COMMENTED OUT FOR CURRENT LAUNCH
// Will be re-enabled when Pro tiers are implemented
// class _GoProButton extends StatelessWidget {
//   final ToxicityAnalyzerController controller;
//
//   const _GoProButton({required this.controller});
//
//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton.icon(
//       onPressed: () {
//         Navigator.of(context).push(
//           MaterialPageRoute<void>(
//             builder: (context) => const MembershipLandingPage(),
//           ),
//         );
//       },
//       icon: const Icon(Icons.assignment_outlined),
//       label: const Text(
//         'Become a member to get full analysis report',
//         textAlign: TextAlign.center,
//       ),
//       style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
//     );
//   }
// }

// _IngestionStatusCard - COMMENTED OUT per user request
// Status messages removed from main dashboard
// class _IngestionStatusCard extends StatelessWidget {
//   final ToxicityAnalyzerController controller;
//
//   const _IngestionStatusCard({required this.controller});
//
//   @override
//   Widget build(BuildContext context) {
//     final activeThread = controller.activeThread;
//     final message = controller.errorMessage ??
//         controller.statusMessage ??
//         'No conversation loaded yet. Select a conversation to analyze.';
//     final color = controller.errorMessage == null
//         ? Theme.of(context).colorScheme.secondaryContainer
//         : Theme.of(context).colorScheme.errorContainer;
//
//     return ColoredBox(
//       color: color,
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Current State of Analysis',
//               style: Theme.of(context).textTheme.titleMedium,
//             ),
//             const SizedBox(height: 8),
//             if (controller.isAnalyzing) ...[
//               const Row(
//                 children: [
//                   SizedBox(
//                     width: 18,
//                     height: 18,
//                     child: CircularProgressIndicator(strokeWidth: 2),
//                   ),
//                   SizedBox(width: 8),
//                   Text('AI is analyzing the selected metrics...'),
//                 ],
//               ),
//               const SizedBox(height: 8),
//             ],
//             SelectableText(message),
//             if (activeThread != null) ...[
//               const SizedBox(height: 8),
//               SelectableText('Active source: ${activeThread.platformSource}'),
//               SelectableText('Messages loaded: ${activeThread.totalMessages}'),
//             ],
//             const SizedBox(height: 8),
//             if (controller.isConnectedAccountsUnlocked)
//               const Text('Pro membership: no daily usage limit.')
//             else if (controller.isPremiumUnlocked)
//               Text(
//                 'Standard membership: ${controller.standardReportsRemaining}/${ToxicityAnalyzerController.standardReportsPerDayLimit} reports remaining in this 24-hour period.',
//               )
//             else
//               const Text(
//                 'Free tier: SMS report preview is limited to the visible report sample.',
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ---------------------------------------------------------------------------
// METRIC SELECTOR SECTION
// ---------------------------------------------------------------------------

class _MetricSelectorSection extends StatefulWidget {
  final ToxicityAnalyzerController controller;

  const _MetricSelectorSection({required this.controller});

  @override
  State<_MetricSelectorSection> createState() => _MetricSelectorSectionState();
}

class _MetricSelectorSectionState extends State<_MetricSelectorSection> {
  // Track which accordion sections are expanded
  bool _standardExpanded   = true;
  bool _goodExpanded       = true;
  bool _badExpanded        = true;
  bool _uglyExpanded       = true;
  bool _narcissistExpanded = true;
  bool _serialKillerExpanded = true;
  bool _customExpanded     = true;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final mq = MediaQuery.of(context);
    final ssWidth = ScreenshotAutomation.instance.windowSize.value.width;
    final screenWidth = (kScreenshotMode && ssWidth > 0) ? ssWidth : mq.size.width;
    final columnCount = _metricColumnCount(screenWidth);
    final controller = widget.controller;

    final goodUnlocked         = controller.isPackGoodUnlocked;
    final badUnlocked          = controller.isPackBadUnlocked;
    final uglyUnlocked         = controller.isPackUglyUnlocked;
    final narcissistUnlocked   = controller.isPackNarcissistUnlocked;
    final serialKillerUnlocked = controller.isPackSerialKillerUnlocked;
    final customMetrics        = controller.customMetrics;

    // Sales tiles — below all accordion sections, always visible until purchased
    final salesTiles = <Widget>[
      _PurchaseCustomMetricTile(controller: controller),
      if (!goodUnlocked)         _MetricPackTile.good(controller: controller),
      if (!badUnlocked)          _MetricPackTile.bad(controller: controller),
      if (!uglyUnlocked)         _MetricPackTile.ugly(controller: controller),
      if (!narcissistUnlocked)   _MetricPackTile.narcissist(controller: controller),
      if (!serialKillerUnlocked) _MetricPackTile.serialKiller(controller: controller),
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Header ──────────────────────────────────────────────────────
          Text(
            l10n.psychologicalMetrics,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(l10n.selectUpToCount(
              ToxicityAnalyzerController.requiredMetricSelectionCount,
              controller.selectedMetricCount)),
          const SizedBox(height: 2),
          Wrap(
            spacing: 0,
            runSpacing: 0,
            children: [
              TextButton.icon(
                onPressed: controller.selectedMetricCount > 0
                    ? () => _showSaveMetricListDialog(context, controller)
                    : null,
                icon: const Icon(Icons.save, size: 16),
                label: Text(l10n.saveSelections),
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
              TextButton.icon(
                onPressed: () => _showLoadMetricListDialog(context, controller),
                icon: const Icon(Icons.folder_open, size: 16),
                label: Text(l10n.loadSelections),
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
              TextButton.icon(
                onPressed: controller.selectedMetricCount > 0
                    ? controller.clearMetricSelection
                    : null,
                icon: const Icon(Icons.clear_all, size: 16),
                label: Text(l10n.clearSelections),
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(l10n.metricsDescription),
          const SizedBox(height: 12),

          // ── Accordion Sections ───────────────────────────────────────────
          _MetricAccordionSection(
            title: 'Standard Pack',
            subtitle: '100 Metrics',
            icon: Icons.psychology,
            isExpanded: _standardExpanded,
            onToggle: () => setState(() => _standardExpanded = !_standardExpanded),
            metrics: controller.standardMetrics,
            controller: controller,
            columnCount: columnCount,
            colorOffset: 0,
          ),
          if (goodUnlocked)
            _MetricAccordionSection(
              title: 'The Good Pack',
              subtitle: '100 Metrics Addon',
              icon: Icons.sentiment_satisfied_alt,
              isExpanded: _goodExpanded,
              onToggle: () => setState(() => _goodExpanded = !_goodExpanded),
              metrics: controller.packGoodMetrics,
              controller: controller,
              columnCount: columnCount,
              colorOffset: 100,
            ),
          if (badUnlocked)
            _MetricAccordionSection(
              title: 'The Bad Pack',
              subtitle: '100 Metrics Addon',
              icon: Icons.warning_amber_rounded,
              isExpanded: _badExpanded,
              onToggle: () => setState(() => _badExpanded = !_badExpanded),
              metrics: controller.packBadMetrics,
              controller: controller,
              columnCount: columnCount,
              colorOffset: 200,
            ),
          if (uglyUnlocked)
            _MetricAccordionSection(
              title: 'The Ugly Pack',
              subtitle: '100 Metrics Addon',
              icon: Icons.dangerous_outlined,
              isExpanded: _uglyExpanded,
              onToggle: () => setState(() => _uglyExpanded = !_uglyExpanded),
              metrics: controller.packUglyMetrics,
              controller: controller,
              columnCount: columnCount,
              colorOffset: 300,
            ),
          if (narcissistUnlocked)
            _MetricAccordionSection(
              title: 'Narcissist Pack',
              subtitle: '50 Metrics Addon',
              icon: Icons.face_retouching_natural,
              isExpanded: _narcissistExpanded,
              onToggle: () => setState(() => _narcissistExpanded = !_narcissistExpanded),
              metrics: controller.packNarcissistMetrics,
              controller: controller,
              columnCount: columnCount,
              colorOffset: 400,
            ),
          if (serialKillerUnlocked)
            _MetricAccordionSection(
              title: 'Serial Killer Pack',
              subtitle: '50 Metrics Addon',
              icon: Icons.coronavirus_outlined,
              isExpanded: _serialKillerExpanded,
              onToggle: () => setState(() => _serialKillerExpanded = !_serialKillerExpanded),
              metrics: controller.packSerialKillerMetrics,
              controller: controller,
              columnCount: columnCount,
              colorOffset: 450,
            ),
          if (customMetrics.isNotEmpty)
            _MetricAccordionSection(
              title: 'Custom Metrics',
              subtitle: '\${customMetrics.length} Metric\${customMetrics.length == 1 ? "" : "s"}',
              icon: Icons.add_circle_outline,
              isExpanded: _customExpanded,
              onToggle: () => setState(() => _customExpanded = !_customExpanded),
              metrics: customMetrics,
              controller: controller,
              columnCount: columnCount,
              colorOffset: 500,
            ),

          // ── Sales Tiles (below accordion, always visible) ────────────────
          if (salesTiles.isNotEmpty) ...[
            const SizedBox(height: 16),
            LayoutBuilder(
              builder: (context, constraints) {
                const spacing = 12.0;
                final cols = columnCount;
                final tileWidth = (constraints.maxWidth - spacing * (cols - 1)) / cols;
                final tileHeight = cols == 1
                    ? (tileWidth * 0.90).clamp(260.0, 380.0)
                    : cols == 2
                        ? (tileWidth * 1.20).clamp(220.0, 340.0)
                        : (tileWidth * 1.35).clamp(180.0, 280.0);
                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: cols,
                    crossAxisSpacing: spacing,
                    mainAxisSpacing: spacing,
                    mainAxisExtent: tileHeight,
                  ),
                  itemCount: salesTiles.length,
                  itemBuilder: (context, index) => salesTiles[index],
                );
              },
            ),
          ],
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// ACCORDION SECTION WIDGET
// ---------------------------------------------------------------------------

class _MetricAccordionSection extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool isExpanded;
  final VoidCallback onToggle;
  final List<PsychologicalMetric> metrics;
  final ToxicityAnalyzerController controller;
  final int columnCount;
  final int colorOffset;

  const _MetricAccordionSection({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.isExpanded,
    required this.onToggle,
    required this.metrics,
    required this.controller,
    required this.columnCount,
    required this.colorOffset,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Accordion header — tappable row
        InkWell(
          onTap: onToggle,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: isDark
                  ? theme.colorScheme.surfaceContainerHighest.withOpacity(0.55)
                  : theme.colorScheme.surfaceContainerHighest.withOpacity(0.45),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(icon, size: 20, color: theme.colorScheme.primary),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurface.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  isExpanded ? Icons.expand_less : Icons.expand_more,
                  color: theme.colorScheme.onSurface.withOpacity(0.6),
                ),
              ],
            ),
          ),
        ),
        // Collapsible grid
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 220),
          crossFadeState: isExpanded ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstChild: LayoutBuilder(
            builder: (context, constraints) {
              const spacing = 12.0;
              final cols = columnCount;
              final tileWidth = (constraints.maxWidth - spacing * (cols - 1)) / cols;
              final tileHeight = cols == 1
                  ? (tileWidth * 0.90).clamp(260.0, 380.0)
                  : cols == 2
                      ? (tileWidth * 1.20).clamp(220.0, 340.0)
                      : (tileWidth * 1.35).clamp(180.0, 280.0);
              return Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 4),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: cols,
                    crossAxisSpacing: spacing,
                    mainAxisSpacing: spacing,
                    mainAxisExtent: tileHeight,
                  ),
                  itemCount: metrics.length,
                  itemBuilder: (context, idx) {
                    final metric = metrics[idx];
                    return _MetricButtonTile(
                      metric: metric,
                      isSelected: controller.isMetricSelected(metric),
                      color: _metricTileColor(colorOffset + idx),
                      onPressed: () => controller.toggleMetricSelection(metric),
                    );
                  },
                ),
              );
            },
          ),
          secondChild: const SizedBox.shrink(),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
Color _metricTileColor(int index) {
  final hue = (index * 137.508) % 360;
  return HSLColor.fromAHSL(1, hue, 0.72, 0.48).toColor();
}

class _MetricButtonTile extends StatelessWidget {
  final PsychologicalMetric metric;
  final bool isSelected;
  final Color color;
  final VoidCallback onPressed;

  const _MetricButtonTile({
    required this.metric,
    required this.isSelected,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isSelected
            ? color
            : Color.alphaBlend(
                Theme.of(context).colorScheme.surface.withOpacity(0.62),
                color,
              ),
        foregroundColor =
            ThemeData.estimateBrightnessForColor(backgroundColor) ==
                    Brightness.dark
                ? Colors.white
                : Colors.black87;
    final l10n = AppLocalizations.of(context)!;

    return AnimatedScale(
      scale: isSelected ? 0.98 : 0.94,
      duration: const Duration(milliseconds: 160),
      child: Material(
        color: backgroundColor.withOpacity(isSelected ? 1 : 0.58),
        borderRadius: BorderRadius.circular(14),
        elevation: isSelected ? 5 : 1,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AutoSizeText(
                            l10n.getMetricName(metric.id, fallbackName: metric.name),
                            maxLines: 2,
                            minFontSize: 10,
                            wrapWords: false,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: foregroundColor,
                              fontWeight: FontWeight.w700,
                              fontSize: (constraints.maxWidth * 0.30).clamp(18.0, 34.0),
                              height: 1.12,
                            ),
                          ),
                          SizedBox(height: constraints.maxWidth * 0.025),
                          Expanded(
                            child: AutoSizeText(
                              l10n.getMetricDescription(metric.id, fallbackDescription: metric.description),
                              minFontSize: 9,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                color: foregroundColor.withOpacity(
                                  isSelected ? 0.96 : 0.75,
                                ),
                                fontSize: 32,
                                height: 1.3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        isSelected
                            ? Icons.radio_button_checked
                            : Icons.radio_button_unchecked,
                        color: foregroundColor.withOpacity(
                          isSelected ? 0.95 : 0.58,
                        ),
                        size: 18,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// PURCHASE CUSTOM METRIC TILE + FULL DIALOG FLOW
// ---------------------------------------------------------------------------

class _PurchaseCustomMetricTile extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _PurchaseCustomMetricTile({required this.controller});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;
    return AnimatedScale(
      scale: 0.94,
      duration: const Duration(milliseconds: 160),
      child: Material(
        color: colorScheme.secondaryContainer.withOpacity(0.72),
        borderRadius: BorderRadius.circular(14),
        elevation: 1,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () => _startPurchaseFlow(context),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Icon(Icons.add_circle_outline,
                                    color: colorScheme.secondary,
                                    size: (constraints.maxWidth * 0.165).clamp(14.0, 26.0)),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: AutoSizeText(
                                  l10n.purchaseCustomMetricTileTitle,
                                  maxLines: 2,
                                  minFontSize: 10,
                                  wrapWords: false,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: colorScheme.onSecondaryContainer,
                                    fontWeight: FontWeight.w700,
                                    fontSize: (constraints.maxWidth * 0.30).clamp(18.0, 34.0),
                                    height: 1.12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: constraints.maxWidth * 0.03),
                          Expanded(
                            child: AutoSizeText(
                              l10n.purchaseCustomMetricTileDescription,
                              minFontSize: 9,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                color: colorScheme.onSecondaryContainer.withOpacity(0.78),
                                fontSize: 32,
                                height: 1.3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: colorScheme.secondary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          r'$4.99',
                          style: TextStyle(
                            color: colorScheme.onSecondary,
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _startPurchaseFlow(BuildContext context) async {
    // In demo mode, skip the real payment and go straight to the metric entry flow
    const isDemoMode = bool.fromEnvironment('DEMO_MODE', defaultValue: false);
    final l10n = AppLocalizations.of(context)!;

    if (!isDemoMode) {
      // Show a purchase confirmation dialog before sending to store
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (ctx) {
          final ctxL10n = AppLocalizations.of(ctx)!;
          return AlertDialog(
            title: Text(ctxL10n.purchaseCustomMetricConfirmTitle),
            content: Text(ctxL10n.purchaseCustomMetricConfirmBody),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx, false),
                child: Text(ctxL10n.cancel),
              ),
              FilledButton(
                onPressed: () => Navigator.pop(ctx, true),
                child: Text(ctxL10n.purchaseCustomMetricConfirmButton),
              ),
            ],
          );
        },
      );
      if (confirmed != true || !context.mounted) return;

      // Trigger real store purchase
      final subService = context.read<SubscriptionService>();
      // Track purchase attribution — initiated from metrics dashboard
      await subService.recordPurchaseSource(
          SubscriptionService.customMetricOneTimeId, 'dashboard');
      final success = await subService.purchaseCustomMetric();
      if (!success || !context.mounted) return;

      // Wait for the store to confirm (pendingCustomMetricPurchase becomes true)
      // Show a waiting dialog while the store processes
      if (!subService.pendingCustomMetricPurchase) {
        if (!context.mounted) return;
        await showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => _PurchasePendingDialog(subService: subService),
        );
        if (!context.mounted) return;
      }

      // Clear the flag � we're handling it now
      subService.clearPendingCustomMetricPurchase();
    }

    if (!context.mounted) return;
    // Step 1: Enter metric name
    await _showEnterNameDialog(context);
  }

  Future<void> _showEnterNameDialog(BuildContext context) async {
    final nameController = TextEditingController();

    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        final ctxL10n = AppLocalizations.of(ctx)!;
        return StatefulBuilder(
          builder: (ctx, setState) => AlertDialog(
            title: Text(ctxL10n.purchaseCustomMetricEnterNameTitle),
            content: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ctxL10n.purchaseCustomMetricEnterNamePrompt,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: nameController,
                  autofocus: true,
                  maxLength: 60,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    hintText: ctxL10n.purchaseCustomMetricNameHint,
                    border: const OutlineInputBorder(),
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx),
                child: Text(ctxL10n.cancelNotReady),
              ),
              FilledButton(
                onPressed: () {
                  final name = nameController.text.trim();
                  if (name.isEmpty) return;
                  Navigator.pop(ctx, name);
                },
                child: Text(ctxL10n.next),
              ),
            ],
          ),
        );
      },
    ).then((name) async {
      if (name == null || name.toString().isEmpty || !context.mounted) return;
      await _showConfirmNameDialog(context, name.toString());
    });
  }

  Future<void> _showConfirmNameDialog(BuildContext context, String name) async {
    await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        final ctxL10n = AppLocalizations.of(ctx)!;
        return AlertDialog(
          title: Text(ctxL10n.purchaseCustomMetricConfirmNameTitle),
          content: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(ctx).style.copyWith(fontSize: 15),
              children: [
                TextSpan(text: ctxL10n.purchaseCustomMetricConfirmNameYouEntered),
                TextSpan(
                  text: '"$name"',
                  style: const TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 17),
                ),
                TextSpan(
                  text: ctxL10n.purchaseCustomMetricConfirmNameWarning,
                  style: const TextStyle(
                      color: Colors.red, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, 'cancel'),
              child: Text(ctxL10n.cancelNotReady),
            ),
            TextButton(
              onPressed: () => Navigator.pop(ctx, 're-enter'),
              child: Text(ctxL10n.purchaseCustomMetricReenterName),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, 'save'),
              child: Text(ctxL10n.purchaseCustomMetricSaveName),
            ),
          ],
        );
      },
    ).then((result) async {
      if (!context.mounted) return;
      if (result == 're-enter') {
        await _showEnterNameDialog(context);
      } else if (result == 'save') {
        await _showEnterMeaningDialog(context, name);
      }
      // 'cancel' or null = user cancelled, flow ends
    });
  }

  Future<void> _showEnterMeaningDialog(
      BuildContext context, String name) async {
    final meaningController = TextEditingController();

    await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        final ctxL10n = AppLocalizations.of(ctx)!;
        return AlertDialog(
          title: Text(ctxL10n.purchaseCustomMetricDefineTitleWithName(name)),
          content: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ctxL10n.purchaseCustomMetricDefinePromptWithName(name),
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: meaningController,
                autofocus: true,
                maxLength: 300,
                maxLines: 5,
                minLines: 3,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  hintText: ctxL10n.purchaseCustomMetricMeaningHint,
                  border: const OutlineInputBorder(),
                  alignLabelWithHint: true,
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, 'cancel'),
              child: Text(ctxL10n.cancelNotReady),
            ),
            TextButton(
              onPressed: () => Navigator.pop(ctx, 're-enter'),
              child: Text(ctxL10n.purchaseCustomMetricReenter),
            ),
            FilledButton(
              onPressed: () {
                final meaning = meaningController.text.trim();
                if (meaning.isEmpty) return;
                Navigator.pop(ctx, meaning);
              },
              child: Text(ctxL10n.purchaseCustomMetricSaveMeaning),
            ),
          ],
        );
      },
    ).then((result) async {
      if (!context.mounted) return;
      if (result == 're-enter') {
        await _showEnterMeaningDialog(context, name);
      } else if (result != null &&
          result != 'cancel' &&
          result != 're-enter') {
        await _showFinalPreviewDialog(context, name, result);
      }
    });
  }

  Future<void> _showFinalPreviewDialog(
      BuildContext context, String name, String meaning) async {
    final colorScheme = Theme.of(context).colorScheme;

    await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        final ctxL10n = AppLocalizations.of(ctx)!;
        return AlertDialog(
          title: Text(ctxL10n.purchaseCustomMetricPreviewTitle),
          content: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ctxL10n.purchaseCustomMetricPreviewSubtitle,
                style: const TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 12),
              // Mini preview tile
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: colorScheme.primary.withOpacity(0.5), width: 1.5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      meaning,
                      style: TextStyle(
                        color:
                            colorScheme.onPrimaryContainer.withOpacity(0.75),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text(
                ctxL10n.purchaseCustomMetricLastChanceWarning,
                style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, 'cancel'),
              child: Text(ctxL10n.purchaseCustomMetricCancelEverything),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, 'commit'),
              child: Text(ctxL10n.purchaseCustomMetricCommit),
            ),
          ],
        );
      },
    ).then((result) async {
      if (!context.mounted) return;
      if (result == 'commit') {
        await controller.addCustomMetric(name: name, description: meaning);
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!
                .purchaseCustomMetricSuccess(name)),
            backgroundColor: Colors.green.shade700,
            duration: const Duration(seconds: 4),
          ),
        );
      }
      // 'cancel' = user cancelled everything, flow ends (no metric saved)
    });
  }
}

/// Shown while waiting for the store to confirm a custom metric purchase.
// ---------------------------------------------------------------------------
// METRIC EXPANSION PACK TILES  (Good / Bad / Ugly)
// ---------------------------------------------------------------------------

enum _PackId { good, bad, ugly, narcissist, serialKiller }

class _MetricPackTile extends StatelessWidget {
  final _PackId packId;
  final ToxicityAnalyzerController controller;

  const _MetricPackTile._({required this.packId, required this.controller});
  factory _MetricPackTile.good({required ToxicityAnalyzerController controller}) =>
      _MetricPackTile._(packId: _PackId.good, controller: controller);
  factory _MetricPackTile.bad({required ToxicityAnalyzerController controller}) =>
      _MetricPackTile._(packId: _PackId.bad, controller: controller);
  factory _MetricPackTile.ugly({required ToxicityAnalyzerController controller}) =>
      _MetricPackTile._(packId: _PackId.ugly, controller: controller);
  factory _MetricPackTile.narcissist({required ToxicityAnalyzerController controller}) =>
      _MetricPackTile._(packId: _PackId.narcissist, controller: controller);
  factory _MetricPackTile.serialKiller({required ToxicityAnalyzerController controller}) =>
      _MetricPackTile._(packId: _PackId.serialKiller, controller: controller);

  // -- Tile data -------------------------------------------------------------

  static const _data = {
    _PackId.good: (
      title: 'The Good',
      subtitle: 'Metrics Expansion Pack',
      body:
          '100 new psychological metrics that detect healthy, positive relationship '
          'patterns � active listening, genuine empathy, secure attachment, mutual '
          'admiration, emotional availability, and more. Perfect for identifying what '
          'good looks like and measuring growth toward healthier dynamics.',
      price: r'$9.99',
      icon: Icons.sentiment_satisfied_alt,
      color: Color(0xFF1B5E20),
      bgColor: Color(0xFFE8F5E9),
      darkColor: Color(0xFF2E7D32),
    ),
    _PackId.bad: (
      title: 'The Bad',
      subtitle: 'Metrics Expansion Pack',
      body:
          '100 new metrics that surface mid-severity warning patterns � passive '
          'aggression, guilt weaponization, emotional blackmail, double standards, '
          'veiled criticism, conditional care, and 94 more. Designed to catch the slow '
          'erosion of trust before it becomes crisis-level.',
      price: r'$9.99',
      icon: Icons.warning_amber_rounded,
      color: Color(0xFF7B2D00),
      bgColor: Color(0xFFFFF3E0),
      darkColor: Color(0xFFE65100),
    ),
    _PackId.ugly: (
      title: 'The Ugly',
      subtitle: 'Metrics Expansion Pack',
      body:
          '100 new metrics that identify severe abuse indicators and crisis-level red '
          'flags — physical violence threats, stalking obsession, reproductive coercion, '
          'identity erasure, lethality risk patterns, and more. The most important pack '
          'for safety-critical analysis.',
      price: r'$9.99',
      icon: Icons.dangerous_outlined,
      color: Color(0xFF7F0000),
      bgColor: Color(0xFFFFEBEE),
      darkColor: Color(0xFFB71C1C),
    ),
    _PackId.narcissist: (
      title: 'The Narcissist',
      subtitle: 'Metrics Expansion Pack',
      body:
          '50 metrics that identify classic narcissistic personality patterns - '
          'grandiosity, love bombing, devaluation, DARVO, supply-seeking, '
          'triangulation, rage at criticism, and more. Essential for recognizing '
          'narcissistic abuse cycles in text.',
      price: r'$4.99',
      icon: Icons.face_retouching_natural,
      color: Color(0xFF4A148C),
      bgColor: Color(0xFFF3E5F5),
      darkColor: Color(0xFF6A1B9A),
    ),
    _PackId.serialKiller: (
      title: 'Serial Killer Metrics',
      subtitle: 'Metrics Expansion Pack',
      body:
          '50 metrics that surface the most dangerous predatory behavioral signals - '
          'dehumanization, objectification, control fixation, sadistic language, '
          'victim-selection patterns, compartmentalization, and more. Designed for '
          'identifying extreme-risk psychological profiles.',
      price: r'$4.99',
      icon: Icons.coronavirus_outlined,
      color: Color(0xFF1A237E),
      bgColor: Color(0xFFE8EAF6),
      darkColor: Color(0xFF283593),
    ),
  };

  // -- Product IDs ------------------------------------------------------------

  String get _productId {
    switch (packId) {
      case _PackId.good:         return SubscriptionService.packGoodOneTimeId;
      case _PackId.bad:          return SubscriptionService.packBadOneTimeId;
      case _PackId.ugly:         return SubscriptionService.packUglyOneTimeId;
      case _PackId.narcissist:   return SubscriptionService.packNarcissistOneTimeId;
      case _PackId.serialKiller: return SubscriptionService.packSerialKillerOneTimeId;
    }
  }

  // -- Build ------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final d = _data[packId]!;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final tileColor = isDark ? d.darkColor : d.bgColor;
    final textColor = isDark ? Colors.white : d.color;

    return AnimatedScale(
      scale: 0.94,
      duration: const Duration(milliseconds: 160),
      child: Material(
        color: tileColor.withOpacity(isDark ? 0.85 : 1.0),
        borderRadius: BorderRadius.circular(14),
        elevation: 2,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () => _startPackPurchaseFlow(context),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final titleSize = (constraints.maxWidth * 0.165).clamp(12.0, 28.0);
                final bodySize  = (constraints.maxWidth * 0.09).clamp(8.5, 13.0);
                final iconSize  = (constraints.maxWidth * 0.165).clamp(14.0, 28.0);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Icon(d.icon, color: textColor, size: iconSize),
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                    children: [
                                      AutoSizeText(
                                        d.title,
                                        maxLines: 1,
                                        minFontSize: 10,
                                        wrapWords: false,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: textColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: (constraints.maxWidth * 0.30).clamp(18.0, 36.0),
                                          height: 1.1,
                                        ),
                                      ),
                                      AutoSizeText(
                                        d.subtitle,
                                        maxLines: 1,
                                        minFontSize: 8,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: textColor.withOpacity(0.72),
                                          fontWeight: FontWeight.w600,
                                          fontSize: titleSize * 0.65,
                                          height: 1.15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: constraints.maxWidth * 0.02),
                          Expanded(
                            child: AutoSizeText(
                              d.body,
                              minFontSize: 9,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                color: textColor.withOpacity(0.82),
                                fontSize: 32,
                                height: 1.3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                        decoration: BoxDecoration(
                          color: isDark ? d.darkColor : d.color,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          d.price,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: (constraints.maxWidth * 0.11).clamp(10.0, 16.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  // -- Purchase flow ----------------------------------------------------------

  Future<void> _startPackPurchaseFlow(BuildContext context) async {
    const isDemoMode = bool.fromEnvironment('DEMO_MODE', defaultValue: false);
    final d = _data[packId]!;

    if (!isDemoMode) {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Purchase ${d.title}'),
          content: Text(
            'Add 100 new "${d.title}" psychological metrics to your analyzer for a '
            'one-time fee of ${d.price}. These metrics will be permanently added '
            'to your metric grid alongside your existing metrics.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Not now'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: Text('Buy for ${d.price}'),
            ),
          ],
        ),
      );
      if (confirmed != true || !context.mounted) return;

      final subService = context.read<SubscriptionService>();
      // Track purchase attribution — initiated from metrics dashboard
      await subService.recordPurchaseSource(_productId, 'dashboard');
      final success = await subService.purchasePack(_productId);
      if (!success || !context.mounted) return;

      // Wait for store confirmation if needed
      final pending = switch (packId) {
        _PackId.good         => subService.pendingPackGoodPurchase,
        _PackId.bad          => subService.pendingPackBadPurchase,
        _PackId.ugly         => subService.pendingPackUglyPurchase,
        _PackId.narcissist   => subService.pendingPackNarcissistPurchase,
        _PackId.serialKiller => subService.pendingPackSerialKillerPurchase,
      };
      if (!pending) {
        if (!context.mounted) return;
        // Wait for IAP callback (handled by listener in subscription_service)
        await showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => AlertDialog(
            title: const Text('Processing Purchase...'),
            content: const Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Waiting for store confirmation...'),
              ],
            ),
          ),
        );
        if (!context.mounted) return;
      }

      // Clear the pending flag
      switch (packId) {
        case _PackId.good:         subService.clearPendingPackGoodPurchase(); break;
        case _PackId.bad:          subService.clearPendingPackBadPurchase();  break;
        case _PackId.ugly:         subService.clearPendingPackUglyPurchase(); break;
        case _PackId.narcissist:   subService.clearPendingPackNarcissistPurchase(); break;
        case _PackId.serialKiller: subService.clearPendingPackSerialKillerPurchase(); break;
      }
    }

    if (!context.mounted) return;

    // Unlock the pack � injects metrics into main catalog and hides this tile
    switch (packId) {
      case _PackId.good:         controller.unlockPackGood(); break;
      case _PackId.bad:          controller.unlockPackBad();  break;
      case _PackId.ugly:         controller.unlockPackUgly(); break;
      case _PackId.narcissist:   controller.unlockPackNarcissist(); break;
      case _PackId.serialKiller: controller.unlockPackSerialKiller(); break;
    }

    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '${d.title} pack unlocked! New metrics added to your grid.',
        ),
        duration: const Duration(seconds: 4),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
                ? d.darkColor
                : d.color,
      ),
    );
  }
}
class _PurchasePendingDialog extends StatefulWidget {
  final SubscriptionService subService;

  const _PurchasePendingDialog({required this.subService});

  @override
  State<_PurchasePendingDialog> createState() => _PurchasePendingDialogState();
}

class _PurchasePendingDialogState extends State<_PurchasePendingDialog> {
  @override
  void initState() {
    super.initState();
    widget.subService.addListener(_onServiceChanged);
  }

  void _onServiceChanged() {
    if (widget.subService.pendingCustomMetricPurchase && mounted) {
      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    widget.subService.removeListener(_onServiceChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return AlertDialog(
      title: Text(l10n.purchaseCustomMetricProcessingTitle),
      content: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          Text(l10n.purchaseCustomMetricProcessingBody),
        ],
      ),
    );
  }
}

class _AnalysisActionSection extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _AnalysisActionSection({required this.controller});

  @override
  Widget build(BuildContext context) {
    final hasLoadedConversation = controller.activeThread != null;
    final canPressAnalyze = hasLoadedConversation && !controller.isAnalyzing;

    return ElevatedButton.icon(
        onPressed: canPressAnalyze
            ? () {
                if (!controller.hasSelectedMetricCount) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        AppLocalizations.of(context)!.selectAtLeastOneMetric,
                      ),
                    ),
                  );
                  return;
                }

                controller.executeAnalysis();
              }
            : null,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        icon: const Icon(Icons.analytics_outlined),
        label: Text(
          hasLoadedConversation
              ? AppLocalizations.of(context)!.analyzeWithSelectedMetrics
              : AppLocalizations.of(context)!.loadConversationAndSelectMetric,
          textAlign: TextAlign.center,
        ),
    );
  }
}

class _ConversationSelectionSection extends StatelessWidget {
  final ToxicityAnalyzerController controller;
  final bool isWide;

  const _ConversationSelectionSection({
    required this.controller,
    required this.isWide,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Card(
      elevation: 2,
      color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.chat_outlined,
                  size: 20,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    l10n.selectConversationToAnalyze,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (isWide)
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: _TextingApplicationButton(controller: controller),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _FromFileButton(controller: controller),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _DiscordButton(controller: controller),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: _AnalysisActionSection(controller: controller),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _RandomAnalysisSection(controller: controller),
                            const SizedBox(height: 4),
                            _RandomMetricsSlider(controller: controller),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            else
              Column(
                children: [
                  _TextingApplicationButton(controller: controller),
                  const SizedBox(height: 12),
                  _FromFileButton(controller: controller),
                  const SizedBox(height: 12),
                  _DiscordButton(controller: controller),
                  const SizedBox(height: 12),
                  _AnalysisActionSection(controller: controller),
                  const SizedBox(height: 12),
                  _RandomAnalysisSection(controller: controller),
                  const SizedBox(height: 4),
                  _RandomMetricsSlider(controller: controller),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class _DateRangeFilterSection extends StatefulWidget {
  final ToxicityAnalyzerController controller;

  const _DateRangeFilterSection({required this.controller});

  @override
  State<_DateRangeFilterSection> createState() => _DateRangeFilterSectionState();
}

class _DateRangeFilterSectionState extends State<_DateRangeFilterSection> {
  bool _dateRangeEnabled = false;

  ToxicityAnalyzerController get controller => widget.controller;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final hasLoadedConversation = controller.activeThread != null;
    final subscriptionService = SubscriptionService();
    final isFreeTier = subscriptionService.activeTier == MembershipTier.free;
    final canUse = hasLoadedConversation && !isFreeTier && _dateRangeEnabled;

    return Card(
      elevation: 2,
      color: Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header row with icon, title, and enable checkbox
            Row(
              children: [
                Icon(
                  Icons.date_range_outlined,
                  size: 20,
                  color: canUse
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSurface.withOpacity(0.38),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    '${l10n.dateRangeFilter} ${l10n.dateRangeOptional}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: canUse
                          ? null
                          : Theme.of(context).colorScheme.onSurface.withOpacity(0.38),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Enable checkbox
            InkWell(
              onTap: hasLoadedConversation && !isFreeTier
                  ? () {
                      setState(() {
                        _dateRangeEnabled = !_dateRangeEnabled;
                        if (!_dateRangeEnabled) {
                          controller.clearDateRange();
                        }
                      });
                    }
                  : isFreeTier
                      ? () => Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (context) => const MembershipLandingPage(),
                            ),
                          )
                      : null,
              child: Row(
                children: [
                  Checkbox(
                    value: _dateRangeEnabled,
                    onChanged: hasLoadedConversation && !isFreeTier
                        ? (val) {
                            setState(() {
                              _dateRangeEnabled = val ?? false;
                              if (!_dateRangeEnabled) {
                                controller.clearDateRange();
                              }
                            });
                          }
                        : null,
                  ),
                  const SizedBox(width: 4),
                  Flexible(
                    child: Text(
                      l10n.enableDateRangeFiltering,
                      softWrap: true,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: hasLoadedConversation && !isFreeTier
                            ? null
                            : Theme.of(context).colorScheme.onSurface.withOpacity(0.38),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Date pickers � only shown when enabled
            if (_dateRangeEnabled) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _DateField(
                      label: l10n.startDate,
                      date: controller.dateRangeStart,
                      enabled: canUse,
                      onTap: canUse
                          ? () {
                              showDatePicker(
                                context: context,
                                initialDate: controller.dateRangeStart ?? DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime.now(),
                              ).then((picked) {
                                if (picked != null) {
                                  controller.setDateRange(picked, controller.dateRangeEnd);
                                }
                              });
                            }
                          : null,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _DateField(
                      label: l10n.endDate,
                      date: controller.dateRangeEnd,
                      enabled: canUse,
                      onTap: canUse
                          ? () {
                              showDatePicker(
                                context: context,
                                initialDate: controller.dateRangeEnd ?? DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime.now(),
                              ).then((picked) {
                                if (picked != null) {
                                  controller.setDateRange(controller.dateRangeStart, picked);
                                }
                              });
                            }
                          : null,
                    ),
                  ),
                ],
              ),
              if (controller.hasDateRange) ...[
                const SizedBox(height: 8),
                Center(
                  child: TextButton.icon(
                    onPressed: canUse ? () => controller.clearDateRange() : null,
                    icon: const Icon(Icons.cancel_outlined, size: 18),
                    label: Text(l10n.clearSelectedDateRange),
                  ),
                ),
              ],
            ],
            if (isFreeTier) ...[
              const SizedBox(height: 8),
              Text(
                l10n.dateRangeRequiresMembership,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _DateField extends StatelessWidget {
  final String label;
  final DateTime? date;
  final bool enabled;
  final VoidCallback? onTap;

  const _DateField({
    required this.label,
    required this.date,
    required this.enabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(
            color: enabled
                ? Theme.of(context).colorScheme.outline
                : Theme.of(context).colorScheme.outline.withOpacity(0.38),
          ),
          borderRadius: BorderRadius.circular(8),
          color: enabled
              ? null
              : Theme.of(context).colorScheme.surfaceContainerHighest,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: enabled
                    ? Theme.of(context).colorScheme.onSurfaceVariant
                    : Theme.of(context).colorScheme.onSurface.withOpacity(0.38),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              date != null
                  ? '${date!.month}/${date!.day}/${date!.year}'
                  : '--/--/----',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: enabled
                    ? null
                    : Theme.of(context).colorScheme.onSurface.withOpacity(0.38),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


void _showSaveMetricListDialog(BuildContext context, ToxicityAnalyzerController controller) {
  final l10n = AppLocalizations.of(context)!;
  final TextEditingController nameController = TextEditingController();

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(l10n.saveMetricListName),
      content: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(l10n.enterListName),
          const SizedBox(height: 8),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'My Metric List',
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l10n.cancel),
        ),
        TextButton(
          onPressed: () async {
            final name = nameController.text.trim();
            if (name.isEmpty) return;

            try {
              final directory = await getApplicationDocumentsDirectory();
              final file = File('${directory.path}/metric_lists/$name.json');
              await file.parent.create(recursive: true);

              final metricList = {
                'name': name,
                'metrics': controller.selectedMetricIds.toList(),
              };
              await file.writeAsString(jsonEncode(metricList));

              if (context.mounted) {
                Navigator.of(context).pop();
                showDialog(
                  context: context,
                  builder: (context) {
                    final l10n = AppLocalizations.of(context)!;
                    return AlertDialog(
                      content: Text(l10n.metricListSavedAs(name)),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text(l10n.ok),
                        ),
                      ],
                    );
                  },
                );
              }
            } catch (e) {
              if (context.mounted) {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l10n.error)),
                );
              }
            }
          },
          child: Text(l10n.save),
        ),
      ],
    ),
  );
}

void _showLoadMetricListDialog(BuildContext context, ToxicityAnalyzerController controller) async {
  final l10n = AppLocalizations.of(context)!;

  try {
    final directory = await getApplicationDocumentsDirectory();
    final metricListsDir = Directory('${directory.path}/metric_lists');
    
    if (!await metricListsDir.exists()) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.noSavedLists)),
        );
      }
      return;
    }

    final files = await metricListsDir.list().toList();
    final jsonFiles = files.whereType<File>().where((f) => f.path.endsWith('.json')).toList();

    if (jsonFiles.isEmpty) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.noSavedLists)),
        );
      }
      return;
    }

    final listNames = <String>[];
    for (final file in jsonFiles) {
      final content = await file.readAsString();
      final data = jsonDecode(content) as Map<String, dynamic>;
      if (data['name'] is String) {
        listNames.add(data['name'] as String);
      }
    }

    if (!context.mounted) return;

    String? selectedList;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.chooseSavedMetrics),
        content: DropdownButtonFormField<String>(
          hint: Text(l10n.chooseSavedMetrics),
          items: listNames.map((name) {
            return DropdownMenuItem<String>(
              value: name,
              child: Text(name),
            );
          }).toList(),
          onChanged: (value) {
            selectedList = value;
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () async {
              if (selectedList == null) return;

              try {
                final file = File('${metricListsDir.path}/$selectedList.json');
                final content = await file.readAsString();
                final data = jsonDecode(content) as Map<String, dynamic>;
                final metrics = (data['metrics'] as List<dynamic>).cast<String>();

                controller.clearMetricSelection();
                for (final metricId in metrics) {
                  final metric = controller.availableMetrics.firstWhere(
                    (m) => m.id == metricId,
                    orElse: () => controller.availableMetrics.first,
                  );
                  controller.toggleMetricSelection(metric);
                }

                if (context.mounted) {
                  Navigator.of(context).pop();
                  showDialog(
                    context: context,
                    builder: (context) {
                    final l10n = AppLocalizations.of(context)!;
                    return AlertDialog(
                      content: Text(l10n.metricListLoadedName(selectedList!)),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text(l10n.ok),
                        ),
                      ],
                    );
                  },
                  );
                }
              } catch (e) {
                if (context.mounted) {
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(l10n.error)),
                  );
                }
              }
            },
            child: Text(l10n.loadButton),
          ),
        ],
      ),
    );
  } catch (e) {
    if (context.mounted) {
      final l10n = AppLocalizations.of(context)!;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.error)),
      );
    }
  }
}

// _PlatformCredentialsButton - COMMENTED OUT FOR CURRENT LAUNCH
// Will be re-enabled when Pro tiers with multi-platform support are implemented
// class _PlatformCredentialsButton extends StatelessWidget {
//   const _PlatformCredentialsButton();
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton.icon(
//       onPressed: () {
//         Navigator.of(context).push(
//           MaterialPageRoute<void>(
//             builder: (context) => const PlatformCredentialsPage(),
//           ),
//         );
//       },
//       icon: const Icon(Icons.vpn_key),
//       label: const Text('Platform Credentials', textAlign: TextAlign.center),
//       style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:airta/controllers/toxicity_analyzer_controller.dart';
import 'package:airta/l10n/app_localizations.dart';
import 'package:airta/models.dart';
import 'package:airta/widgets/dashboard_control_pane.dart';
import 'package:airta/widgets/report_viewer_pane.dart';

class AnalyzerWorkspace extends StatefulWidget {
  const AnalyzerWorkspace({super.key});

  @override
  State<AnalyzerWorkspace> createState() => _AnalyzerWorkspaceState();
}

class _AnalyzerWorkspaceState extends State<AnalyzerWorkspace> {
  bool _isAnalysisPanelOpen = true;
  PsychologicalAnalysisReport? _lastObservedReport;
  bool _wasAnalyzing = false;
  String? _lastShownError;

  @override
  Widget build(BuildContext context) {
    return Consumer<ToxicityAnalyzerController>(
      builder: (context, controller, child) {
        final activeReport = controller.activeReport;
        if (activeReport != null && activeReport != _lastObservedReport) {
          _lastObservedReport = activeReport;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              setState(() => _isAnalysisPanelOpen = false);
            }
          });
        }

        // Show SnackBar when analysis finishes with an error
        if (_wasAnalyzing && !controller.isAnalyzing && controller.activeReport == null) {
          final err = controller.errorMessage;
          if (err != null && err != _lastShownError) {
            _lastShownError = err;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(err),
                    backgroundColor: Theme.of(context).colorScheme.error,
                    duration: const Duration(seconds: 6),
                  ),
                );
              }
            });
          }
        }
        _wasAnalyzing = controller.isAnalyzing;

        return Stack(
          children: [
            Positioned.fill(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 260),
                switchInCurve: Curves.easeOutCubic,
                switchOutCurve: Curves.easeOutCubic,
                child: _isAnalysisPanelOpen
                    ? const DashboardControlPane(key: ValueKey('dashboard'))
                    : const ReportViewerPane(key: ValueKey('report')),
              ),
            ),
            if (controller.isAnalyzing && _isAnalysisPanelOpen)
              Positioned.fill(
                child: Container(color: Colors.black.withOpacity(0.8)),
              ),
            if (controller.isAnalyzing)
              const Positioned.fill(child: Center(child: _AnalyzingToast())),
            if (!_isAnalysisPanelOpen && activeReport != null)
              Positioned(
                left: 16,
                right: 16,
                bottom: 16,
                child: SafeArea(
                  bottom: true,
                  child: FilledButton.icon(
                    onPressed: () {
                      setState(() => _isAnalysisPanelOpen = true);
                    },
                    icon: const Icon(Icons.replay),
                    label: Text(AppLocalizations.of(context)!.runAnotherAnalysis),
                    style: FilledButton.styleFrom(
                      minimumSize: const Size.fromHeight(56),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}

class _AnalyzingToast extends StatefulWidget {
  const _AnalyzingToast();

  @override
  State<_AnalyzingToast> createState() => _AnalyzingToastState();
}

class _AnalyzingToastState extends State<_AnalyzingToast>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: true);
    _fadeAnimation = Tween<double>(
      begin: 0.4,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return FadeTransition(
          opacity: _fadeAnimation,
          child: Container(
            width: constraints.maxWidth * 0.8,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppLocalizations.of(context)!.analyzingMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  AppLocalizations.of(context)!.analyzingSubMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(height: 24),
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  strokeWidth: 3,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

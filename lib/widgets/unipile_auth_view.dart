import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:airta/services/unipile_integration_service.dart';
import 'package:airta/l10n/app_localizations.dart';

class UnipileAuthView extends StatefulWidget {
  const UnipileAuthView({super.key});

  @override
  State<UnipileAuthView> createState() => _UnipileAuthViewState();
}

class _UnipileAuthViewState extends State<UnipileAuthView> {
  late final WebViewController _controller;
  bool _isLoading = true;
  String? _errorMessage;
  final UnipileIntegrationService _unipileService = UnipileIntegrationService();

  @override
  void initState() {
    super.initState();
    _initializeAuth();
  }

  Future<void> _initializeAuth() async {
    try {
      // Generate hosted auth link
      final authUrl = await _unipileService.generateHostedAuthLink(
        userId: 'user_${DateTime.now().millisecondsSinceEpoch}',
      );

      if (authUrl == null) {
        // Demo mode - credentials not configured
        setState(() {
          _errorMessage = 'Unipile API credentials not configured yet.\n\n'
              'Please update the API URL and API Key in:\n'
              'lib/services/unipile_integration_service.dart\n\n'
              'Set _demoMode to false after adding credentials.';
          _isLoading = false;
        });
        return;
      }

      // Initialize WebView with the generated URL
      _controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onNavigationRequest: (request) {
              final url = request.url.toLowerCase();
              if (url.contains('success') || url.contains('callback')) {
                Navigator.of(context).pop(true);
                return NavigationDecision.prevent;
              }
              if (url.contains('failure') || url.contains('error')) {
                Navigator.of(context).pop(false);
                return NavigationDecision.prevent;
              }

              return NavigationDecision.navigate;
            },
          ),
        )
        ..loadRequest(Uri.parse(authUrl));

      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Failed to initialize authentication:\n\n$e';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LayoutBuilder(
          builder: (context, constraints) {
            final isNarrow = constraints.maxWidth < 400;
            return Text(
              'Connect Messaging Account',
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
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(AppLocalizations.of(context)!.initializingConnection),
          ],
        ),
      );
    }

    if (_errorMessage != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.orange),
              const SizedBox(height: 16),
              Text(
                AppLocalizations.of(context)!.configurationRequired,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                _errorMessage!,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(AppLocalizations.of(context)!.goBack),
              ),
            ],
          ),
        ),
      );
    }

    return WebViewWidget(controller: _controller);
  }
}

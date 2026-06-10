import 'package:flutter/material.dart';
import 'package:airta/controllers/toxicity_analyzer_controller.dart';
import 'package:airta/services/unipile_integration_service.dart';
import 'package:airta/models.dart';
import 'package:airta/l10n/app_localizations.dart';

class UnipileConversationPicker extends StatefulWidget {
  final ToxicityAnalyzerController controller;

  const UnipileConversationPicker({
    super.key,
    required this.controller,
  });

  @override
  State<UnipileConversationPicker> createState() =>
      _UnipileConversationPickerState();
}

class _UnipileConversationPickerState
    extends State<UnipileConversationPicker> {
  final UnipileIntegrationService _unipileService =
      UnipileIntegrationService();
  List<ConversationThread>? _conversations;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _loadConversations();
  }

  Future<void> _loadConversations() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      // TODO: Get actual account ID from auth flow
      // For now using placeholder
      final accountId = 'user_account_id';
      final conversations =
          await _unipileService.fetchPremiumThreads(accountId);

      setState(() {
        _conversations = conversations;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
        _isLoading = false;
      });
    }
  }

  Future<void> _selectConversation(ConversationThread thread) async {
    try {
      // Show loading
      if (mounted) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      }

      // Fetch messages for the thread
      final messages =
          await _unipileService.fetchMessagesForThread(thread.threadId);

      // Create updated thread with messages
      final updatedThread = ConversationThread(
        threadId: thread.threadId,
        platformSource: thread.platformSource,
        fileSource: thread.fileSource,
        messages: messages,
      );

      // Load into controller
      widget.controller.loadSmsThread(updatedThread);

      // Close loading and picker
      if (mounted) {
        Navigator.of(context).pop(); // Close loading
        Navigator.of(context).pop(); // Close picker
      }
    } catch (e) {
      // Close loading
      if (mounted) {
        Navigator.of(context).pop();

        // Show error
        showDialog(
          context: context,
          builder: (context) {
            final l10n = AppLocalizations.of(context)!;
            return AlertDialog(
              title: Text(l10n.errorDialogTitle),
              content: Text(l10n.failedToLoadConversation(e.toString())),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(l10n.okButton),
                ),
              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: LayoutBuilder(
          builder: (context, constraints) {
            final isNarrow = constraints.maxWidth < 400;
            return Text(
              l10n.selectConversationTitle,
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
    final l10n = AppLocalizations.of(context)!;
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_errorMessage != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text(
                l10n.errorLoadingConversations,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                _errorMessage!,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: _loadConversations,
                icon: const Icon(Icons.refresh),
                label: Text(l10n.retryButton),
              ),
            ],
          ),
        ),
      );
    }

    if (_conversations == null || _conversations!.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.chat_bubble_outline, size: 80),
              const SizedBox(height: 24),
              Text(
                l10n.noConversationsFound,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              Text(
                l10n.noConversationsFoundBody,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: _conversations!.length,
      itemBuilder: (context, index) {
        final conversation = _conversations![index];
        return ListTile(
          leading: CircleAvatar(
            child: Icon(_getPlatformIcon(conversation.platformSource)),
          ),
          title: Text(conversation.threadId),
          subtitle: Text(conversation.platformSource),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () => _selectConversation(conversation),
        );
      },
    );
  }

  IconData _getPlatformIcon(String platform) {
    final lower = platform.toLowerCase();
    if (lower.contains('whatsapp')) return Icons.chat;
    if (lower.contains('discord')) return Icons.discord;
    if (lower.contains('telegram')) return Icons.telegram;
    if (lower.contains('messenger')) return Icons.messenger;
    if (lower.contains('instagram')) return Icons.camera_alt;
    return Icons.message;
  }
}

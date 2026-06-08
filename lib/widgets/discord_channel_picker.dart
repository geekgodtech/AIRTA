import 'package:flutter/material.dart';
import '../services/discord_api_service.dart';
import '../services/remote_config_service.dart';
import '../controllers/toxicity_analyzer_controller.dart';

class DiscordChannelPicker extends StatefulWidget {
  final ToxicityAnalyzerController controller;
  final DiscordGuild guild;

  const DiscordChannelPicker({
    super.key,
    required this.controller,
    required this.guild,
  });

  @override
  State<DiscordChannelPicker> createState() => _DiscordChannelPickerState();
}

class _DiscordChannelPickerState extends State<DiscordChannelPicker> {
  late DiscordApiService _discordService;
  final RemoteConfigService _remoteConfig = RemoteConfigService();

  List<DiscordChannel>? _channels;
  bool _loading = true;
  String? _error;
  bool _importing = false;
  int _importProgress = 0;

  @override
  void initState() {
    super.initState();
    _discordService = DiscordApiService(
      botToken: _remoteConfig.discordBotToken,
    );
    _loadChannels();
  }

  Future<void> _loadChannels() async {
    try {
      final channels = await _discordService.getGuildChannels(widget.guild.id);
      setState(() {
        _channels = channels;
        _loading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _loading = false;
      });
    }
  }

  Future<void> _importChannel(DiscordChannel channel) async {
    setState(() {
      _importing = true;
      _importProgress = 0;
    });

    try {
      final messages = await _discordService.getAllChannelMessages(
        channel.id,
        maxMessages: 10000,
        onProgress: (count) {
          setState(() {
            _importProgress = count;
          });
        },
      );

      if (messages.isEmpty) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('No messages found in this channel'),
              backgroundColor: Colors.orange,
            ),
          );
        }
        setState(() {
          _importing = false;
        });
        return;
      }

      final thread = _discordService.convertToConversationThread(
        messages,
        channel.name,
        widget.guild.name,
      );

      widget.controller.loadSmsThread(thread);

      if (mounted) {
        Navigator.of(context).popUntil((route) => route.isFirst);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Imported ${messages.length} messages from #${channel.name}'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to import: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _importing = false;
        });
      }
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
              widget.guild.name,
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
        backgroundColor: const Color(0xFF5865F2),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          size: 64,
                          color: Colors.red,
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Failed to load channels',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          _error!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _loading = true;
                              _error = null;
                            });
                            _loadChannels();
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                )
              : _channels == null || _channels!.isEmpty
                  ? const Center(
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.tag,
                              size: 64,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 16),
                            Text(
                              'No Text Channels Found',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'This server has no text channels available.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Stack(
                      children: [
                        ListView.builder(
                          padding: const EdgeInsets.all(16),
                          itemCount: _channels!.length,
                          itemBuilder: (context, index) {
                            final channel = _channels![index];
                            return Card(
                              margin: const EdgeInsets.only(bottom: 12),
                              child: ListTile(
                                leading: const Icon(
                                  Icons.tag,
                                  color: Color(0xFF5865F2),
                                ),
                                title: Text(
                                  channel.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                trailing: const Icon(Icons.download),
                                onTap: _importing
                                    ? null
                                    : () => _importChannel(channel),
                              ),
                            );
                          },
                        ),
                        if (_importing)
                          Container(
                            color: Colors.black54,
                            child: Center(
                              child: Card(
                                margin: const EdgeInsets.all(32),
                                child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const CircularProgressIndicator(),
                                      const SizedBox(height: 16),
                                      const Text(
                                        'Importing Messages...',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Fetched $_importProgress messages',
                                        style:
                                            const TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
    );
  }
}

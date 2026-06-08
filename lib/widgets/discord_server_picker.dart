import 'package:flutter/material.dart';
import '../services/discord_api_service.dart';
import '../services/remote_config_service.dart';
import '../controllers/toxicity_analyzer_controller.dart';
import 'discord_channel_picker.dart';

class DiscordServerPicker extends StatefulWidget {
  final ToxicityAnalyzerController controller;

  const DiscordServerPicker({
    super.key,
    required this.controller,
  });

  @override
  State<DiscordServerPicker> createState() => _DiscordServerPickerState();
}

class _DiscordServerPickerState extends State<DiscordServerPicker> {
  late DiscordApiService _discordService;
  final RemoteConfigService _remoteConfig = RemoteConfigService();

  List<DiscordGuild>? _guilds;
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _discordService = DiscordApiService(
      botToken: _remoteConfig.discordBotToken,
    );
    _loadGuilds();
  }

  Future<void> _loadGuilds() async {
    try {
      final guilds = await _discordService.getBotGuilds();
      setState(() {
        _guilds = guilds;
        _loading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _loading = false;
      });
    }
  }

  void _selectGuild(DiscordGuild guild) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DiscordChannelPicker(
          controller: widget.controller,
          guild: guild,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LayoutBuilder(
          builder: (context, constraints) {
            final isNarrow = constraints.maxWidth < 400;
            return Text(
              'Select Discord Server',
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
                          'Failed to load servers',
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
                            _loadGuilds();
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                )
              : _guilds == null || _guilds!.isEmpty
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.discord,
                              size: 64,
                              color: Colors.grey,
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'No Discord Servers Found',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'You need to be a member of at least one Discord server to use this feature.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: _guilds!.length,
                      itemBuilder: (context, index) {
                        final guild = _guilds![index];
                        return Card(
                          margin: const EdgeInsets.only(bottom: 12),
                          child: ListTile(
                            leading: guild.iconUrl != null
                                ? CircleAvatar(
                                    backgroundImage: NetworkImage(guild.iconUrl!),
                                  )
                                : CircleAvatar(
                                    backgroundColor: const Color(0xFF5865F2),
                                    child: Text(
                                      guild.name[0].toUpperCase(),
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                  ),
                            title: Text(
                              guild.name,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: guild.owner
                                ? const Row(
                                    children: [
                                      Icon(Icons.star, size: 16, color: Colors.amber),
                                      SizedBox(width: 4),
                                      Text('Owner'),
                                    ],
                                  )
                                : null,
                            trailing: const Icon(Icons.chevron_right),
                            onTap: () => _selectGuild(guild),
                          ),
                        );
                      },
                    ),
    );
  }
}

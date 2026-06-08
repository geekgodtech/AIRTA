import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models.dart';

class DiscordApiService {
  static const String API_BASE_URL = 'https://discord.com/api/v10';

  final String botToken;
  final http.Client httpClient;

  DiscordApiService({
    required this.botToken,
    http.Client? httpClient,
  }) : httpClient = httpClient ?? http.Client();

  Future<List<DiscordGuild>> getUserGuilds(String userAccessToken) async {
    final response = await httpClient.get(
      Uri.parse('$API_BASE_URL/users/@me/guilds'),
      headers: {
        'Authorization': 'Bearer $userAccessToken',
      },
    );

    if (response.statusCode != 200) {
      throw DiscordApiException(
        statusCode: response.statusCode,
        message: 'Failed to fetch user guilds: ${response.body}',
      );
    }

    final List<dynamic> guildsJson = jsonDecode(response.body);
    return guildsJson.map((json) => DiscordGuild.fromJson(json)).toList();
  }

  Future<List<DiscordGuild>> getBotGuilds() async {
    final response = await httpClient.get(
      Uri.parse('$API_BASE_URL/users/@me/guilds'),
      headers: {
        'Authorization': 'Bot $botToken',
      },
    );

    if (response.statusCode != 200) {
      throw DiscordApiException(
        statusCode: response.statusCode,
        message: 'Failed to fetch bot guilds: ${response.body}',
      );
    }

    final List<dynamic> guildsJson = jsonDecode(response.body);
    return guildsJson.map((json) => DiscordGuild.fromJson(json)).toList();
  }

  Future<List<DiscordChannel>> getGuildChannels(String guildId) async {
    final response = await httpClient.get(
      Uri.parse('$API_BASE_URL/guilds/$guildId/channels'),
      headers: {
        'Authorization': 'Bot $botToken',
      },
    );

    if (response.statusCode != 200) {
      throw DiscordApiException(
        statusCode: response.statusCode,
        message: 'Failed to fetch guild channels: ${response.body}',
      );
    }

    final List<dynamic> channelsJson = jsonDecode(response.body);
    return channelsJson
        .map((json) => DiscordChannel.fromJson(json))
        .where((channel) => channel.type == 0)
        .toList();
  }

  Future<List<DiscordMessage>> getChannelMessages(
    String channelId, {
    int limit = 100,
    String? before,
  }) async {
    final queryParams = {
      'limit': limit.toString(),
      if (before != null) 'before': before,
    };

    final uri = Uri.parse('$API_BASE_URL/channels/$channelId/messages')
        .replace(queryParameters: queryParams);

    final response = await httpClient.get(
      uri,
      headers: {
        'Authorization': 'Bot $botToken',
      },
    );

    if (response.statusCode != 200) {
      throw DiscordApiException(
        statusCode: response.statusCode,
        message: 'Failed to fetch channel messages: ${response.body}',
      );
    }

    final List<dynamic> messagesJson = jsonDecode(response.body);
    return messagesJson.map((json) => DiscordMessage.fromJson(json)).toList();
  }

  Future<List<DiscordMessage>> getAllChannelMessages(
    String channelId, {
    int maxMessages = 10000,
    Function(int)? onProgress,
  }) async {
    List<DiscordMessage> allMessages = [];
    String? lastMessageId;
    int fetchedCount = 0;

    while (fetchedCount < maxMessages) {
      final batch = await getChannelMessages(
        channelId,
        limit: 100,
        before: lastMessageId,
      );

      if (batch.isEmpty) break;

      allMessages.addAll(batch);
      fetchedCount += batch.length;
      lastMessageId = batch.last.id;

      if (onProgress != null) {
        onProgress(fetchedCount);
      }

      if (batch.length < 100) break;

      await Future.delayed(const Duration(milliseconds: 500));
    }

    return allMessages;
  }

  ConversationThread convertToConversationThread(
    List<DiscordMessage> messages,
    String channelName,
    String guildName,
  ) {
    messages.sort((a, b) => a.timestamp.compareTo(b.timestamp));

    final conversationMessages = messages.map((msg) {
      return ChatMessage(
        senderName: msg.author.username,
        textBody: msg.content,
        timestamp: msg.timestamp,
        isInitiator: false,
      );
    }).toList();

    return ConversationThread(
      fileSource: '$guildName - $channelName',
      platformSource: 'Discord',
      messages: conversationMessages,
    );
  }

  Future<String> getOAuth2AuthorizationUrl({
    required String clientId,
    required String redirectUri,
    required String state,
  }) async {
    final params = {
      'client_id': clientId,
      'redirect_uri': redirectUri,
      'response_type': 'code',
      'scope': 'identify guilds',
      'state': state,
    };

    final uri = Uri.parse('https://discord.com/api/oauth2/authorize')
        .replace(queryParameters: params);

    return uri.toString();
  }

  Future<DiscordTokenResponse> exchangeCodeForToken({
    required String code,
    required String clientId,
    required String clientSecret,
    required String redirectUri,
  }) async {
    final response = await httpClient.post(
      Uri.parse('$API_BASE_URL/oauth2/token'),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: {
        'grant_type': 'authorization_code',
        'code': code,
        'redirect_uri': redirectUri,
        'client_id': clientId,
        'client_secret': clientSecret,
      },
    );

    if (response.statusCode != 200) {
      throw DiscordApiException(
        statusCode: response.statusCode,
        message: 'Failed to exchange code for token: ${response.body}',
      );
    }

    return DiscordTokenResponse.fromJson(jsonDecode(response.body));
  }
}

class DiscordGuild {
  final String id;
  final String name;
  final String? icon;
  final bool owner;

  DiscordGuild({
    required this.id,
    required this.name,
    this.icon,
    required this.owner,
  });

  factory DiscordGuild.fromJson(Map<String, dynamic> json) {
    return DiscordGuild(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
      owner: json['owner'] ?? false,
    );
  }

  String? get iconUrl {
    if (icon == null) return null;
    return 'https://cdn.discordapp.com/icons/$id/$icon.png';
  }
}

class DiscordChannel {
  final String id;
  final String name;
  final int type;
  final int? position;

  DiscordChannel({
    required this.id,
    required this.name,
    required this.type,
    this.position,
  });

  factory DiscordChannel.fromJson(Map<String, dynamic> json) {
    return DiscordChannel(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      position: json['position'],
    );
  }
}

class DiscordMessage {
  final String id;
  final String content;
  final DiscordUser author;
  final DateTime timestamp;

  DiscordMessage({
    required this.id,
    required this.content,
    required this.author,
    required this.timestamp,
  });

  factory DiscordMessage.fromJson(Map<String, dynamic> json) {
    return DiscordMessage(
      id: json['id'],
      content: json['content'] ?? '',
      author: DiscordUser.fromJson(json['author']),
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}

class DiscordUser {
  final String id;
  final String username;
  final String discriminator;
  final String? avatar;

  DiscordUser({
    required this.id,
    required this.username,
    required this.discriminator,
    this.avatar,
  });

  factory DiscordUser.fromJson(Map<String, dynamic> json) {
    return DiscordUser(
      id: json['id'],
      username: json['username'],
      discriminator: json['discriminator'] ?? '0',
      avatar: json['avatar'],
    );
  }
}

class DiscordTokenResponse {
  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final String refreshToken;
  final String scope;

  DiscordTokenResponse({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.refreshToken,
    required this.scope,
  });

  factory DiscordTokenResponse.fromJson(Map<String, dynamic> json) {
    return DiscordTokenResponse(
      accessToken: json['access_token'],
      tokenType: json['token_type'],
      expiresIn: json['expires_in'],
      refreshToken: json['refresh_token'],
      scope: json['scope'],
    );
  }
}

class DiscordApiException implements Exception {
  final int statusCode;
  final String message;

  DiscordApiException({
    required this.statusCode,
    required this.message,
  });

  @override
  String toString() => 'Discord API Error ($statusCode): $message';
}

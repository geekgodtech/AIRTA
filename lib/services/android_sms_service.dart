import 'dart:io';
import 'package:flutter/services.dart';
import 'package:telephony/telephony.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:airta/models.dart';
import 'dart:convert';

class AndroidSmsService {
  final Telephony _telephony = Telephony.instance;
  static const platform = MethodChannel('com.toxicity_analyzer/contacts');
  
  // Singleton pattern
  static final AndroidSmsService _instance = AndroidSmsService._internal();
  factory AndroidSmsService() => _instance;
  AndroidSmsService._internal();

  /// Request SMS read permission from the user
  Future<bool> requestSmsPermission() async {
    if (!Platform.isAndroid) {
      return false;
    }

    final status = await Permission.sms.request();
    return status.isGranted;
  }

  /// Check if SMS permission is already granted
  Future<bool> hasSmsPermission() async {
    if (!Platform.isAndroid) {
      return false;
    }

    return await Permission.sms.isGranted;
  }

  /// Get contact name from phone number using platform channel
  Future<String> _getContactName(String phoneNumber) async {
    try {
      final String? contactName = await platform.invokeMethod(
        'getContactName',
        {'phoneNumber': phoneNumber},
      );

      if (contactName != null && contactName.isNotEmpty) {
        return contactName;
      }

      return phoneNumber;
    } catch (e) {
      return phoneNumber;
    }
  }

  /// Fetch all SMS messages and group them by conversation partner
  Future<List<ConversationPartner>> fetchAllConversations() async {
    if (!Platform.isAndroid) {
      throw UnsupportedError('SMS reading is only supported on Android');
    }

    final hasPermission = await hasSmsPermission();
    if (!hasPermission) {
      throw Exception('SMS permission not granted');
    }

    final messages = await _telephony.getInboxSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
    );
    final sentMessages = await _telephony.getSentSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
    );

    // Combine all messages
    final allMessages = [...messages, ...sentMessages];

    // Group messages by phone number/address
    final Map<String, List<SmsMessage>> conversationMap = {};

    for (final msg in allMessages) {
      final address = msg.address ?? 'Unknown';
      if (!conversationMap.containsKey(address)) {
        conversationMap[address] = [];
      }
      conversationMap[address]!.add(msg);
    }
    // Convert to ConversationPartner list
    final conversations = <ConversationPartner>[];

    for (final entry in conversationMap.entries) {
      final address = entry.key;
      final messages = entry.value;

      // Sort messages by date (date is int milliseconds)
      messages.sort((a, b) {
        final dateA = a.date ?? 0;
        final dateB = b.date ?? 0;
        return dateA.compareTo(dateB);
      });

      // Count messages and get last message date
      final messageCount = messages.length;
      final lastMessageDate = messages.isNotEmpty
          ? (messages.last.date ?? 0)
          : 0;

      // Get contact name for this phone number
      final displayName = await _getContactName(address);

      conversations.add(
        ConversationPartner(
          id: address,
          displayName: displayName,
          messageCount: messageCount,
          lastMessageDate: lastMessageDate,
        ),
      );

    }

    // Sort by: 1) Has contact name (not just phone number), 2) Most recent
    conversations.sort((a, b) {
      // Check if displayName is a phone number (contains only digits, spaces, dashes, etc.)
      final aIsPhoneNumber = RegExp(
        r'^[\d\s\-\(\)\+]+$',
      ).hasMatch(a.displayName);
      final bIsPhoneNumber = RegExp(
        r'^[\d\s\-\(\)\+]+$',
      ).hasMatch(b.displayName);

      // Contacts with names come first
      if (!aIsPhoneNumber && bIsPhoneNumber) return -1;
      if (aIsPhoneNumber && !bIsPhoneNumber) return 1;

      // Within same category, sort by most recent
      return b.lastMessageDate.compareTo(a.lastMessageDate);
    });

    return conversations;
  }

  /// Fetch a specific conversation thread by phone number/address
  Future<ConversationThread> fetchConversationThread(String address) async {
    if (!Platform.isAndroid) {
      throw UnsupportedError('SMS reading is only supported on Android');
    }

    final hasPermission = await hasSmsPermission();
    if (!hasPermission) {
      throw Exception('SMS permission not granted');
    }

    // Fetch inbox messages from this address
    final inboxMessages = await _telephony.getInboxSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
      filter: SmsFilter.where(SmsColumn.ADDRESS).equals(address),
    );

    // Fetch sent messages to this address
    final sentMessages = await _telephony.getSentSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
      filter: SmsFilter.where(SmsColumn.ADDRESS).equals(address),
    );

    _lastFetchSmsCount = inboxMessages.length + sentMessages.length;

    // Fetch MMS messages (includes RCS stored as MMS, combines threads with like numbers)
    final mmsMessages = await _fetchMmsMessages(address);

    // Convert SMS messages to ChatMessage
    final smsChatMessages = [...inboxMessages, ...sentMessages].map((sms) {
      final isSent = sentMessages.contains(sms);
      final smsDate = sms.date;
      final DateTime timestamp;
      if (smsDate != null) {
        timestamp = DateTime.fromMillisecondsSinceEpoch(smsDate);
      } else {
        timestamp = DateTime.now();
      }

      return ChatMessage(
        timestamp: timestamp,
        senderName: isSent ? 'You' : address,
        textContent: sms.body ?? '',
        messageType: 'SMS',
      );
    }).toList();

    // Convert MMS messages to ChatMessage
    final mmsChatMessages = mmsMessages.map((mms) {
      final mmsDate = mms.date;
      final DateTime timestamp;
      if (mmsDate != null) {
        timestamp = DateTime.fromMillisecondsSinceEpoch(mmsDate);
      } else {
        timestamp = DateTime.now();
      }

      return ChatMessage(
        timestamp: timestamp,
        senderName: mms.isSent ? 'You' : address,
        textContent: mms.body ?? '',
        messageType: 'MMS', // RCS messages are stored as MMS
      );
    }).toList();

    // Combine and sort all messages
    final allMessages = [...smsChatMessages, ...mmsChatMessages];
    allMessages.sort((a, b) {
      final dateA = a.timestamp ?? DateTime.now();
      final dateB = b.timestamp ?? DateTime.now();
      return dateA.compareTo(dateB);
    });

    return ConversationThread(
      threadId: 'sms_$address',
      platformSource: 'SMS',
      messages: allMessages,
      fileSource: 'Android SMS',
    );
  }

  /// Fetch all messages (SMS + MMS) using optimized query
  Future<List<dynamic>> _fetchAllMessages(String address) async {
    try {
      print('DEBUG: Fetching all messages for $address');
      final String messagesJson = await platform.invokeMethod(
        'getAllMessages',
        {'address': address},
      );
      
      final List<dynamic> messagesData = jsonDecode(messagesJson) as List<dynamic>;
      print('DEBUG: Fetched ${messagesData.length} total messages');
      
      // Count message types
      int smsCount = 0;
      int mmsCount = 0;
      for (final msg in messagesData) {
        final Map<String, dynamic> data = msg as Map<String, dynamic>;
        final type = data['messageType'] as String?;
        if (type == 'SMS') {
          smsCount++;
        } else if (type == 'MMS') {
          mmsCount++;
        }
      }
      print('DEBUG: SMS: $smsCount, MMS: $mmsCount');
      
      // Store counts for debug info
      _lastFetchSmsCount = smsCount;
      _lastFetchMmsCount = mmsCount;
      
      return messagesData;
    } catch (e) {
      print('ERROR: Failed to fetch all messages: $e');
      return [];
    }
  }

  int _lastFetchSmsCount = 0;
  int _lastFetchMmsCount = 0;

  Map<String, int> getLastFetchCounts() {
    return {'sms': _lastFetchSmsCount, 'mms': _lastFetchMmsCount};
  }

  /// Fetch MMS messages (including RCS stored as MMS) from content provider
  Future<List<MmsMessageWrapper>> _fetchMmsMessages(String address) async {
    try {
      print('DEBUG: Fetching MMS messages for $address');
      final String mmsJson = await platform.invokeMethod(
        'getMmsMessages',
        {'address': address},
      );
      
      final List<dynamic> mmsData = jsonDecode(mmsJson) as List<dynamic>;
      print('DEBUG: Fetched ${mmsData.length} MMS messages');
      
      // Update count for debug info
      _lastFetchMmsCount = mmsData.length;
      
      return mmsData.map((data) {
        final Map<String, dynamic> msg = data as Map<String, dynamic>;
        return MmsMessageWrapper(
          address: msg['address'] as String?,
          body: msg['body'] as String?,
          date: msg['date'] as int?,
          isSent: msg['type'] == 'sent',
        );
      }).toList();
    } catch (e) {
      print('ERROR: Failed to fetch MMS messages: $e');
      return [];
    }
  }

  /// Search for conversations containing a specific keyword
  Future<List<ConversationPartner>> searchConversations(String keyword) async {
    if (!Platform.isAndroid) {
      throw UnsupportedError('SMS reading is only supported on Android');
    }

    final hasPermission = await hasSmsPermission();
    if (!hasPermission) {
      throw Exception('SMS permission not granted');
    }

    // Fetch all messages containing the keyword
    final messages = await _telephony.getInboxSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
      filter: SmsFilter.where(SmsColumn.BODY).like('%$keyword%'),
    );

    final sentMessages = await _telephony.getSentSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
      filter: SmsFilter.where(SmsColumn.BODY).like('%$keyword%'),
    );

    // Combine and group by address
    final allMessages = [...messages, ...sentMessages];
    final Map<String, List<SmsMessage>> addressMessages = {};

    for (final msg in allMessages) {
      final address = msg.address ?? 'Unknown';
      if (!addressMessages.containsKey(address)) {
        addressMessages[address] = [];
      }
      addressMessages[address]!.add(msg);
    }

    // Convert to ConversationPartner list
    final conversations = addressMessages.entries.map((entry) {
      final messages = entry.value;
      messages.sort((a, b) => (a.date ?? 0).compareTo(b.date ?? 0));
      final lastMessageDate = messages.isNotEmpty
          ? (messages.last.date ?? 0)
          : 0;

      return ConversationPartner(
        id: entry.key,
        displayName: entry.key,
        messageCount: messages.length,
        lastMessageDate: lastMessageDate,
      );
    }).toList();

    // Sort by: 1) Has contact name (not just phone number), 2) Most recent
    conversations.sort((a, b) {
      final aIsPhoneNumber = RegExp(
        r'^[\d\s\-\(\)\+]+$',
      ).hasMatch(a.displayName);
      final bIsPhoneNumber = RegExp(
        r'^[\d\s\-\(\)\+]+$',
      ).hasMatch(b.displayName);

      if (!aIsPhoneNumber && bIsPhoneNumber) return -1;
      if (aIsPhoneNumber && !bIsPhoneNumber) return 1;

      return b.lastMessageDate.compareTo(a.lastMessageDate);
    });

    return conversations;
  }

  /// Get global SMS and MMS message counts
  Future<Map<String, int>> getMessageTypeCounts() async {
    if (!Platform.isAndroid) {
      return {'sms': 0, 'mms': 0};
    }

    final hasPermission = await hasSmsPermission();
    if (!hasPermission) {
      return {'sms': 0, 'mms': 0};
    }

    try {
      // Count SMS messages
      final inboxSms = await _telephony.getInboxSms(
        columns: [SmsColumn.ADDRESS],
      );
      final sentSms = await _telephony.getSentSms(
        columns: [SmsColumn.ADDRESS],
      );
      final smsCount = inboxSms.length + sentSms.length;

      // Count MMS messages (query content provider directly)
      final mmsCount = await _countMmsMessages();

      return {'sms': smsCount, 'mms': mmsCount};
    } catch (e) {
      print('ERROR: Failed to get message type counts: $e');
      return {'sms': 0, 'mms': 0};
    }
  }

  /// Count MMS messages from content provider
  Future<int> _countMmsMessages() async {
    try {
      final String result = await platform.invokeMethod('countMmsMessages');
      return int.parse(result);
    } catch (e) {
      print('ERROR: Failed to count MMS messages: $e');
      return 0;
    }
  }
}

/// Wrapper for MMS messages (including RCS stored as MMS)
class MmsMessageWrapper {
  final String? address;
  final String? body;
  final int? date;
  final bool isSent;

  MmsMessageWrapper({
    required this.address,
    required this.body,
    required this.date,
    required this.isSent,
  });
}

/// Model for conversation partner in the list
class ConversationPartner {
  final String id;
  final String displayName;
  final int messageCount;
  final int lastMessageDate; // milliseconds since epoch

  ConversationPartner({
    required this.id,
    required this.displayName,
    required this.messageCount,
    required this.lastMessageDate,
  });
}

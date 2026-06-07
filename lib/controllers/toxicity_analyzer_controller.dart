import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:airta/config/app_secrets.dart';
import 'package:airta/data_parser.dart';
import 'package:airta/models.dart';
import 'package:airta/services/deepseek_api_service.dart';
import 'package:airta/services/language_service.dart';
import 'package:airta/services/pdf_synthesis_service.dart';
import 'package:airta/services/unipile_integration_service.dart';
import 'package:airta/services/android_sms_service.dart' if (dart.library.io) 'package:airta/services/android_sms_service.dart';

class ToxicityAnalyzerController extends ChangeNotifier {
  static const int requiredMetricSelectionCount =
      SelectedMetrics.requiredMetricCount;
  static const int standardReportsPerDayLimit = 10;
  static const String _notNowPressCountPreferenceKey = 'not_now_press_count';
  static const String _hasSeenReferralOfferPreferenceKey =
      'has_seen_referral_offer';
  static const String _referralDownloadCountPreferenceKey =
      'referral_download_count';
  static const String _hasCompletedFirstReportPreferenceKey =
      'has_completed_first_report';
  static const String _deepSeekApiKeyPreferenceKey = 'deepseek_api_key';
  static const int requiredReferralDownloads = 5;

  final List<PsychologicalMetric> availableMetrics = _buildMetricCatalog();
  DeepSeekApiService _deepSeekApiService = DeepSeekApiService(
    apiKey: AppSecrets.deepSeekApiKey.isNotEmpty
        ? AppSecrets.deepSeekApiKey
        : 'placeholder',
  );
  String? _runtimeApiKey;
  final PdfSynthesisService _pdfSynthesisService = PdfSynthesisService();
  final UnipileIntegrationService _unipileIntegrationService =
      UnipileIntegrationService();
  final Set<String> _selectedMetricIds = <String>{};
  final List<DateTime> _standardReportRunTimes = <DateTime>[];
  StreamSubscription<List<SharedMediaFile>>? _sharedMediaSubscription;

  // Cached global message type counts
  int _globalSmsCount = 0;
  int _globalMmsCount = 0;
  bool _globalCountsLoaded = false;

  // Last fetch counts from SMS service
  int _lastFetchSmsCount = 0;
  int _lastFetchMmsCount = 0;

  ConversationThread? activeThread;
  PsychologicalAnalysisReport? activeReport;
  Uint8List? activePdfBytes;
  bool isIngesting = false;
  bool isAnalyzing = false;
  bool isRandomizingMetrics = false;
  bool isPremiumUnlocked = const bool.fromEnvironment('DEMO_MODE', defaultValue: false);
  bool isCurrentReportUnlocked = false;
  bool isConnectedAccountsUnlocked = false;
  bool isDiscordAddonUnlocked = false;
  bool isFetchingCloudData = false;
  int notNowPressCount = 0;
  bool hasSeenReferralOffer = false;
  int referralDownloadCount = 0;
  bool hasCompletedFirstReport = false;
  String? statusMessage;
  String? errorMessage;
  DateTime? dateRangeStart;
  DateTime? dateRangeEnd;
  int randomMetricsCount = 20;

  List<PsychologicalMetric> get selectedMetrics {
    return availableMetrics
        .where((metric) => _selectedMetricIds.contains(metric.id))
        .toList(growable: false);
  }

  bool get hasSelectedMetricCount =>
      _selectedMetricIds.isNotEmpty &&
      _selectedMetricIds.length <= requiredMetricSelectionCount;

  int get selectedMetricCount => _selectedMetricIds.length;

  Set<String> get selectedMetricIds => _selectedMetricIds;

  bool get canAccessFullCurrentReport =>
      isPremiumUnlocked || isCurrentReportUnlocked;

  int get standardReportsRemaining {
    _pruneStandardReportRunTimes();
    return (standardReportsPerDayLimit - _standardReportRunTimes.length).clamp(
      0,
      standardReportsPerDayLimit,
    );
  }

  SelectedMetrics get selectedMetricBundle {
    return SelectedMetrics(metrics: selectedMetrics);
  }

  bool get hasReachedStandardDailyReportLimit {
    if (!isPremiumUnlocked || isConnectedAccountsUnlocked) {
      return false;
    }

    _pruneStandardReportRunTimes();
    return _standardReportRunTimes.length >= standardReportsPerDayLimit;
  }

  bool isMetricSelected(PsychologicalMetric metric) {
    return _selectedMetricIds.contains(metric.id);
  }

  void unlockPremium() {
    isPremiumUnlocked = true;
    notifyListeners();
  }

  void unlockCurrentReport() {
    isCurrentReportUnlocked = true;
    notifyListeners();
  }

  void unlockConnectedAccounts() {
    isPremiumUnlocked = true;
    isConnectedAccountsUnlocked = true;
    notifyListeners();
  }

  void unlockDiscordAddon() {
    isDiscordAddonUnlocked = true;
    notifyListeners();
  }

  void setDateRange(DateTime? start, DateTime? end) {
    dateRangeStart = start;
    // Set end date to end of day to include all messages on that day
    if (end != null) {
      dateRangeEnd = DateTime(end.year, end.month, end.day, 23, 59, 59, 999);
    } else {
      dateRangeEnd = null;
    }
    notifyListeners();
  }

  void clearDateRange() {
    dateRangeStart = null;
    dateRangeEnd = null;
    notifyListeners();
  }

  bool get hasDateRange => dateRangeStart != null && dateRangeEnd != null;

  void setRandomMetricsCount(int count) {
    randomMetricsCount = count.clamp(2, 20);
    notifyListeners();
  }

  List<ChatMessage> filterMessagesByDateRange(List<ChatMessage> messages) {
    if (!hasDateRange) return messages;

    int messagesWithTimestamp = 0;
    int messagesInRange = 0;

    final filtered = messages.where((message) {
      final messageDate = message.timestamp;
      if (messageDate == null) return false;

      messagesWithTimestamp++;

      // Normalize dates to midnight for comparison
      final messageDateNormalized = DateTime(messageDate.year, messageDate.month, messageDate.day);
      final startDateNormalized = DateTime(dateRangeStart!.year, dateRangeStart!.month, dateRangeStart!.day);
      final endDateNormalized = DateTime(dateRangeEnd!.year, dateRangeEnd!.month, dateRangeEnd!.day);

      // Check if message date is within the inclusive date range
      final isInRange = !messageDateNormalized.isBefore(startDateNormalized) &&
                        !messageDateNormalized.isAfter(endDateNormalized);
      
      if (isInRange) messagesInRange++;
      
      return isInRange;
    }).toList();

    _filteredMessageCount = messagesInRange;
    _totalMessagesWithTimestamp = messagesWithTimestamp;
    return filtered;
  }

  int _filteredMessageCount = 0;
  int _totalMessagesWithTimestamp = 0;

  Future<void> _loadGlobalMessageCounts() async {
    if (Platform.isAndroid) {
      try {
        final smsService = AndroidSmsService();
        final counts = await smsService.getMessageTypeCounts();
        _globalSmsCount = counts['sms'] ?? 0;
        _globalMmsCount = counts['mms'] ?? 0;
        _globalCountsLoaded = true;
        notifyListeners();
      } catch (e) {
        // Ignore if not on Android or error
      }
    }
  }

  List<ChatMessage> sampleMessagesForTokenLimit(List<ChatMessage> messages, int maxTokens) {
    // Estimate tokens (rough approximation: 4 chars per token)
    int estimateTokens(String text) => (text.length / 4).ceil();

    int totalTokens = 0;
    List<ChatMessage> sampled = [];

    if (messages.isEmpty) return messages;

    // If within token limit, return all
    for (var message in messages) {
      totalTokens += estimateTokens(message.textBody);
    }

    if (totalTokens <= maxTokens) return messages;

    // Otherwise, sample from beginning, middle, and end
    final sortedMessages = List<ChatMessage>.from(messages);
    sortedMessages.sort((a, b) => (a.timestamp ?? DateTime.now()).compareTo(b.timestamp ?? DateTime.now()));

    final n = sortedMessages.length;
    final sampleSize = (n / 3).ceil();

    // Take from beginning
    int currentTokens = 0;
    for (int i = 0; i < sampleSize && i < n; i++) {
      final tokens = estimateTokens(sortedMessages[i].textBody);
      if (currentTokens + tokens > maxTokens / 3) break;
      sampled.add(sortedMessages[i]);
      currentTokens += tokens;
    }

    // Take from middle
    currentTokens = 0;
    final middleStart = (n / 2 - sampleSize / 2).floor().clamp(0, n);
    for (int i = middleStart; i < middleStart + sampleSize && i < n; i++) {
      final tokens = estimateTokens(sortedMessages[i].textBody);
      if (currentTokens + tokens > maxTokens / 3) break;
      sampled.add(sortedMessages[i]);
      currentTokens += tokens;
    }

    // Take from end
    currentTokens = 0;
    final endStart = (n - sampleSize).clamp(0, n);
    for (int i = endStart; i < n; i++) {
      final tokens = estimateTokens(sortedMessages[i].textBody);
      if (currentTokens + tokens > maxTokens / 3) break;
      sampled.add(sortedMessages[i]);
      currentTokens += tokens;
    }

    // Sort by timestamp
    sampled.sort((a, b) => (a.timestamp ?? DateTime.now()).compareTo(b.timestamp ?? DateTime.now()));

    return sampled;
  }

  Future<void> loadPersistentFreeTierState() async {
    final preferences = await SharedPreferences.getInstance();
    notNowPressCount = preferences.getInt(_notNowPressCountPreferenceKey) ?? 0;
    hasSeenReferralOffer =
        preferences.getBool(_hasSeenReferralOfferPreferenceKey) ?? false;
    referralDownloadCount =
        preferences.getInt(_referralDownloadCountPreferenceKey) ?? 0;
    hasCompletedFirstReport =
        preferences.getBool(_hasCompletedFirstReportPreferenceKey) ?? false;

    // Load API key
    _runtimeApiKey = preferences.getString(_deepSeekApiKeyPreferenceKey);
    if (_runtimeApiKey != null && _runtimeApiKey!.isNotEmpty) {
      _deepSeekApiService = DeepSeekApiService(apiKey: _runtimeApiKey!);
    } else if (AppSecrets.hasDeepSeekApiKey) {
      _deepSeekApiService = DeepSeekApiService(
        apiKey: AppSecrets.deepSeekApiKey,
      );
    }

    notifyListeners();
  }

  Future<void> saveApiKey(String apiKey) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(_deepSeekApiKeyPreferenceKey, apiKey);
    _runtimeApiKey = apiKey;
    _deepSeekApiService = DeepSeekApiService(apiKey: apiKey);
    notifyListeners();
  }

  String? get apiKey =>
      _runtimeApiKey ??
      (AppSecrets.hasDeepSeekApiKey ? AppSecrets.deepSeekApiKey : null);

  bool get hasApiKey => apiKey != null && apiKey!.isNotEmpty;

  Future<int> recordNotNowPress() async {
    notNowPressCount += 1;
    final preferences = await SharedPreferences.getInstance();
    await preferences.setInt(_notNowPressCountPreferenceKey, notNowPressCount);
    notifyListeners();
    return notNowPressCount;
  }

  Future<void> markReferralOfferSeen() async {
    hasSeenReferralOffer = true;
    final preferences = await SharedPreferences.getInstance();
    await preferences.setBool(_hasSeenReferralOfferPreferenceKey, true);
    notifyListeners();
  }

  Future<void> incrementReferralDownloadCount() async {
    referralDownloadCount += 1;
    final preferences = await SharedPreferences.getInstance();
    await preferences.setInt(
      _referralDownloadCountPreferenceKey,
      referralDownloadCount,
    );
    notifyListeners();
  }

  bool get hasEarnedReferralUnlock =>
      referralDownloadCount >= requiredReferralDownloads;

  bool get shouldShowReferralOffer =>
      hasCompletedFirstReport &&
      !hasSeenReferralOffer &&
      !isPremiumUnlocked &&
      !isCurrentReportUnlocked;

  Future<void> markFirstReportCompleted() async {
    hasCompletedFirstReport = true;
    final preferences = await SharedPreferences.getInstance();
    await preferences.setBool(_hasCompletedFirstReportPreferenceKey, true);
    notifyListeners();
  }

  void unlockViaReferral() {
    if (hasEarnedReferralUnlock) {
      isCurrentReportUnlocked = true;
      notifyListeners();
    }
  }

  void toggleMetricSelection(PsychologicalMetric metric) {
    if (_selectedMetricIds.contains(metric.id)) {
      _selectedMetricIds.remove(metric.id);
      notifyListeners();
      return;
    }

    if (_selectedMetricIds.length >= requiredMetricSelectionCount) {
      statusMessage =
          'Up to $requiredMetricSelectionCount metrics can be selected.';
      notifyListeners();
      return;
    }

    _selectedMetricIds.add(metric.id);
    statusMessage = null;
    notifyListeners();
  }

  void clearMetricSelection() {
    if (_selectedMetricIds.isEmpty) {
      return;
    }

    _selectedMetricIds.clear();
    statusMessage = null;
    notifyListeners();
  }

  Future<void> selectRandomMetricsAndExecuteAnalysis() async {
    if (availableMetrics.length < randomMetricsCount) {
      errorMessage =
          'At least $randomMetricsCount metrics are required for random selection.';
      notifyListeners();
      return;
    }

    isRandomizingMetrics = true;
    _selectedMetricIds.clear();
    statusMessage =
        'The wheel is spinning for $randomMetricsCount random metrics.';
    errorMessage = null;
    notifyListeners();

    final shuffledMetrics = List<PsychologicalMetric>.of(availableMetrics)
      ..shuffle(Random());
    final selectedRandomMetrics = shuffledMetrics
        .take(randomMetricsCount)
        .toList(growable: false);

    for (var index = 0; index < selectedRandomMetrics.length; index += 1) {
      final metric = selectedRandomMetrics[index];
      await Future<void>.delayed(const Duration(milliseconds: 120));
      _selectedMetricIds.add(metric.id);
      statusMessage =
          'Contestant ${index + 1}/$randomMetricsCount: ${metric.name} is selected.';
      notifyListeners();
    }

    await Future<void>.delayed(const Duration(milliseconds: 350));
    statusMessage =
        'Final answer locked: $randomMetricsCount metrics selected.';
    isRandomizingMetrics = false;
    notifyListeners();

    await executeAnalysis();
  }

  Future<void> ingestForCurrentPlatform() async {
    if (!kIsWeb && Platform.isAndroid) {
      await extractAndroidSmsDatabase();
      return;
    }

    await pickLocalConversationFile();
  }

  Future<void> fetchAndLoadCloudThread(String accountId, String chatId) async {
    final trimmedAccountId = accountId.trim();
    final trimmedChatId = chatId.trim();

    if (trimmedAccountId.isEmpty || trimmedChatId.isEmpty) {
      errorMessage = 'Account ID and Chat ID are required for cloud import.';
      notifyListeners();
      return;
    }

    isFetchingCloudData = true;
    errorMessage = null;
    statusMessage = 'Fetching premium cloud conversation...';
    notifyListeners();

    try {
      final threads = await _unipileIntegrationService.fetchPremiumThreads(
        trimmedAccountId,
      );
      final cloudThread = threads.firstWhere(
        (thread) => thread.threadId == trimmedChatId,
        orElse: () => ConversationThread(
          threadId: trimmedChatId,
          platformSource: 'Unipile Cloud',
          fileSource: 'Unipile Cloud',
          messages: const [],
        ),
      );
      final messages = await _unipileIntegrationService.fetchMessagesForThread(
        trimmedChatId,
      );

      activeThread = ConversationThread(
        threadId: cloudThread.threadId,
        platformSource: cloudThread.platformSource,
        fileSource: cloudThread.fileSource,
        messages: messages,
      );
      activeReport = null;
      activePdfBytes = null;
      isCurrentReportUnlocked = false;
      statusMessage = 'Premium cloud conversation loaded.';
    } catch (error) {
      errorMessage = error.toString();
    } finally {
      isFetchingCloudData = false;
      notifyListeners();
    }
  }

  Future<void> executeAnalysis() async {
    final thread = activeThread;
    if (thread == null) {
      errorMessage = 'Load a conversation before executing analysis.';
      notifyListeners();
      return;
    }

    if (!hasSelectedMetricCount) {
      errorMessage =
          'Select at least 1 and up to $requiredMetricSelectionCount metrics before executing analysis.';
      notifyListeners();
      return;
    }

    if (!hasApiKey) {
      errorMessage =
          'AI API key is missing. Please enter your DeepSeek API key in Settings.';
      notifyListeners();
      return;
    }

    if (hasReachedStandardDailyReportLimit) {
      errorMessage =
          'Standard membership includes $standardReportsPerDayLimit reports per 24 hours. Upgrade to Pro for unlimited reports.';
      notifyListeners();
      return;
    }

    isAnalyzing = true;
    activeReport = null;
    activePdfBytes = null;
    // Don't reset isCurrentReportUnlocked if it was already set (e.g., via long-press)
    final preserveUnlock = isCurrentReportUnlocked;
    isCurrentReportUnlocked = preserveUnlock;
    statusMessage = 'Sending conversation to AI for metric-bound analysis.';
    errorMessage = null;
    notifyListeners();

    try {
      // Apply date range filtering if set
      ConversationThread analysisThread = thread;
      if (hasDateRange && dateRangeStart != null && dateRangeEnd != null) {
        var filteredMessages = filterMessagesByDateRange(thread.messages);
        
        // Ensure we have messages after filtering
        if (filteredMessages.isEmpty) {
          errorMessage = 'NO_MESSAGES_IN_DATE_RANGE';
          isAnalyzing = false;
          notifyListeners();
          return;
        } else {
          // Apply token limit sampling if needed (DeepSeek token limit ~128k)
          const int maxTokens = 128000;
          filteredMessages = sampleMessagesForTokenLimit(filteredMessages, maxTokens);
          
          // Create a new thread with filtered messages
          analysisThread = ConversationThread(
            threadId: thread.threadId,
            platformSource: thread.platformSource,
            messages: filteredMessages,
            fileSource: thread.fileSource,
          );
        }
      }
      
      final report = await _deepSeekApiService.executeForensicAnalysis(
        targetThread: analysisThread,
        selectedMetrics: selectedMetricBundle,
        languageCode: LanguageService().currentLanguageCode,
      );
      activeReport = report;
      _recordCompletedReportRun();
      if (!hasCompletedFirstReport) {
        await markFirstReportCompleted();
      }
      statusMessage = 'AI analysis completed. Generating PDF document.';
      notifyListeners();
      try {
        activePdfBytes = await _pdfSynthesisService.constructForensicDocument(
          thread: thread,
          report: report,
          dateRangeStart: dateRangeStart,
          dateRangeEnd: dateRangeEnd,
        );
        statusMessage =
            'AI analysis and PDF generation completed successfully.';
      } catch (pdfError) {
        activePdfBytes = null;
        statusMessage = 'AI analysis completed, but PDF generation failed.';
        errorMessage = 'PDF generation failed: $pdfError';
      }
    } catch (error) {
      errorMessage = error.toString();
    } finally {
      isAnalyzing = false;
      notifyListeners();
    }
  }

  Future<void> extractAndroidSmsDatabase() async {
    _beginIngestion('Preparing Android SMS extraction pipeline.');

    try {
      // Android compliance plan:
      // 1. Explain to the user why SMS-role access is required and request consent before any extraction begins.
      // 2. Prompt the user through Android's role-management flow to temporarily grant this app default SMS app status.
      // 3. After the role is granted, execute a local read-only SQLite/content-resolver query against the device SMS/MMS history.
      // 4. Map the local query result into a ConversationThread without uploading raw data outside the device at ingestion time.
      // 5. Prompt the user to switch their default SMS app back to their original messaging app immediately after extraction.
      activeThread = ConversationThread(
        threadId: 'android-sms-placeholder',
        platformSource: 'Android SMS',
        fileSource: 'Android SMS Placeholder',
        messages: const [],
      );
      statusMessage =
          'Android SMS extraction architecture is ready; native role and SQLite bridge implementation comes next.';
      errorMessage = null;
    } catch (error) {
      errorMessage = error.toString();
    } finally {
      _endIngestion();
    }
  }

  void _recordCompletedReportRun() {
    if (!isPremiumUnlocked || isConnectedAccountsUnlocked) {
      return;
    }

    _pruneStandardReportRunTimes();
    _standardReportRunTimes.add(DateTime.now());
  }

  void _pruneStandardReportRunTimes() {
    final cutoff = DateTime.now().subtract(const Duration(hours: 24));
    _standardReportRunTimes.removeWhere((runTime) => runTime.isBefore(cutoff));
  }

  void initializeIosShareIntentListener() {
    if (kIsWeb || !Platform.isIOS) {
      return;
    }

    _sharedMediaSubscription ??=
        ReceiveSharingIntent.instance.getMediaStream().listen(
      _handleSharedMediaFiles,
      onError: (Object error) {
        errorMessage = error.toString();
        notifyListeners();
      },
    );

    ReceiveSharingIntent.instance.getInitialMedia().then(
          _handleSharedMediaFiles,
        );
  }

  void loadSmsThread(ConversationThread thread) {
    activeThread = thread;
    activeReport = null;
    activePdfBytes = null;
    isCurrentReportUnlocked = false;
    statusMessage =
        'Loaded ${thread.totalMessages} messages from ${thread.platformSource}.';
    errorMessage = null;
    
    // Update last fetch counts from SMS service
    if (Platform.isAndroid) {
      try {
        final smsService = AndroidSmsService();
        final counts = smsService.getLastFetchCounts();
        _lastFetchSmsCount = counts['sms'] ?? 0;
        _lastFetchMmsCount = counts['mms'] ?? 0;
      } catch (e) {
        // Ignore if error
      }
    }
    
    notifyListeners();
  }

  Future<void> pickLocalConversationFile() async {
    _beginIngestion('Opening local file picker.');

    try {
      final parsedThread = await DataParserService.pickAndParseFile();
      if (parsedThread == null) {
        statusMessage = 'No file selected.';
        return;
      }

      activeThread = parsedThread;
      activeReport = null;
      activePdfBytes = null;
      isCurrentReportUnlocked = false;
      statusMessage =
          'Loaded ${parsedThread.totalMessages} messages from ${parsedThread.fileSource}.';
      errorMessage = null;
    } catch (error) {
      errorMessage = error.toString();
    } finally {
      _endIngestion();
    }
  }

  void _handleSharedMediaFiles(List<SharedMediaFile> sharedFiles) {
    if (sharedFiles.isEmpty) {
      return;
    }

    final messages = <ChatMessage>[];
    for (final sharedFile in sharedFiles) {
      final value = sharedFile.path.trim();
      if (value.isEmpty) {
        continue;
      }

      messages.add(
        ChatMessage(
          senderName: 'Shared iOS Text',
          timestamp: DateTime.now(),
          textContent: value,
        ),
      );
    }

    if (messages.isEmpty) {
      return;
    }

    activeThread = ConversationThread(
      threadId:
          'recent-conflict-analysis-${DateTime.now().millisecondsSinceEpoch}',
      platformSource: 'iOS Share Sheet',
      fileSource: 'Recent Conflict Analysis',
      messages: messages,
    );
    activeReport = null;
    activePdfBytes = null;
    isCurrentReportUnlocked = false;
    statusMessage = 'Created Recent Conflict Analysis from iOS shared text.';
    errorMessage = null;
    notifyListeners();
  }

  void _beginIngestion(String message) {
    isIngesting = true;
    statusMessage = message;
    errorMessage = null;
    notifyListeners();
  }

  void _endIngestion() {
    isIngesting = false;
    notifyListeners();
  }

  @override
  void dispose() {
    _sharedMediaSubscription?.cancel();
    super.dispose();
  }
}

List<PsychologicalMetric> _buildMetricCatalog() {
  const metricDefinitions = [
    (
      name: 'Contempt',
      description:
          'Looks for superiority, disgust, mockery, eye-rolling language, or insults that place one partner beneath the other.',
    ),
    (
      name: 'Defensiveness',
      description:
          'Tracks reflexive self-protection, counterattacks, excuses, and refusal to consider the other person’s complaint.',
    ),
    (
      name: 'Stonewalling',
      description:
          'Identifies shutdown, withdrawal, ignoring, refusal to answer, or ending conversations to avoid engagement.',
    ),
    (
      name: 'Criticism',
      description:
          'Detects attacks on character or personality instead of specific behaviors, needs, or incidents.',
    ),
    (
      name: 'Gaslighting Indicators',
      description:
          'Flags attempts to make someone doubt memory, perception, sanity, or the legitimacy of their experience.',
    ),
    (
      name: 'Blame Shifting',
      description:
          'Measures whether responsibility is redirected onto the other partner instead of being acknowledged directly.',
    ),
    (
      name: 'Escalation Pattern',
      description:
          'Evaluates whether tone, accusations, intensity, or threats increase instead of moving toward resolution.',
    ),
    (
      name: 'Repair Attempt Recognition',
      description:
          'Checks whether apologies, humor, pauses, reassurance, or peace offerings are noticed and accepted.',
    ),
    (
      name: 'Accountability Language',
      description:
          'Looks for clear ownership of harm, specific responsibility, and willingness to change behavior.',
    ),
    (
      name: 'Boundary Respect',
      description:
          'Assesses whether stated limits around time, privacy, body, emotions, or contact are honored.',
    ),
    (
      name: 'Coercive Control Indicators',
      description:
          'Flags patterns of intimidation, restriction, monitoring, dependency, or control over choices and movement.',
    ),
    (
      name: 'Threat Language',
      description:
          'Identifies explicit or implied threats involving safety, abandonment, exposure, retaliation, or punishment.',
    ),
    (
      name: 'Dismissiveness',
      description:
          'Detects brushing off concerns, treating needs as unimportant, or refusing to take distress seriously.',
    ),
    (
      name: 'Invalidation',
      description:
          'Measures denial, ridicule, or correction of another person’s emotions instead of acknowledging them.',
    ),
    (
      name: 'Empathy Expression',
      description:
          'Looks for perspective-taking, care, emotional recognition, and concern for the other person’s experience.',
    ),
    (
      name: 'Reciprocity',
      description:
          'Assesses whether attention, effort, apology, compromise, and emotional support flow both ways.',
    ),
    (
      name: 'Emotional Regulation',
      description:
          'Evaluates ability to stay grounded, pause, self-soothe, and communicate without explosive reactivity.',
    ),
    (
      name: 'Sarcasm Used as Harm',
      description:
          'Flags sarcasm used to belittle, punish, humiliate, or disguise hostility as humor.',
    ),
    (
      name: 'Name Calling',
      description:
          'Identifies derogatory labels, insults, profanity directed at the person, or identity-based attacks.',
    ),
    (
      name: 'Silent Treatment Pattern',
      description:
          'Tracks silence used as punishment, control, avoidance, or withdrawal of connection.',
    ),
    (
      name: 'Jealousy Framing',
      description:
          'Evaluates suspicion, possessiveness, accusations, or jealousy presented as proof of care.',
    ),
    (
      name: 'Isolation Pressure',
      description:
          'Flags efforts to separate a partner from friends, family, support systems, or outside perspectives.',
    ),
    (
      name: 'Financial Control Indicators',
      description:
          'Looks for control of money, spending, employment, access to accounts, or financial independence.',
    ),
    (
      name: 'Privacy Invasion Indicators',
      description:
          'Detects snooping, password demands, device checks, location tracking, or privacy violations.',
    ),
    (
      name: 'Apology Specificity',
      description:
          'Measures whether apologies name the exact harm, impact, and future correction instead of staying vague.',
    ),
    (
      name: 'Forgiveness Pressure',
      description:
          'Flags demands to move on, forgive quickly, or stop discussing harm before repair occurs.',
    ),
    (
      name: 'Minimization',
      description:
          'Detects downplaying harm, calling serious concerns dramatic, or reducing impact to avoid responsibility.',
    ),
    (
      name: 'Projection',
      description:
          'Looks for accusations that mirror the speaker’s own behavior, motives, or unresolved feelings.',
    ),
    (
      name: 'Interruption Pattern',
      description:
          'Tracks cutting off, talking over, refusing completion, or controlling conversational turns.',
    ),
    (
      name: 'Topic Deflection',
      description:
          'Identifies changing the subject, bringing up unrelated issues, or avoiding the central concern.',
    ),
    (
      name: 'Resolution Orientation',
      description:
          'Measures whether messages aim toward solutions, clarity, agreements, and next steps.',
    ),
    (
      name: 'Mutual Problem Solving',
      description:
          'Assesses collaborative language, shared responsibility, brainstorming, and willingness to find workable compromises.',
    ),
    (
      name: 'Emotional Flooding',
      description:
          'Detects overwhelm, panic, shutdown, spiraling, or inability to process during conflict.',
    ),
    (
      name: 'Fear Response Cues',
      description:
          'Looks for appeasing, careful wording, dread, safety concerns, or fear of the partner’s reaction.',
    ),
    (
      name: 'Consistency of Claims',
      description:
          'Evaluates whether accounts remain internally consistent across messages and time.',
    ),
    (
      name: 'Evidence-Based Recollection',
      description:
          'Checks whether claims reference concrete events, quotes, timelines, or observable behavior.',
    ),
    (
      name: 'Demand Withdrawal Pattern',
      description:
          'Tracks one partner pursuing answers or change while the other avoids, shuts down, or exits.',
    ),
    (
      name: 'Power Imbalance Indicators',
      description:
          'Flags unequal decision power, fear of consequences, dependence, intimidation, or unilateral control.',
    ),
    (
      name: 'Respectful Disagreement',
      description:
          'Measures whether conflict preserves dignity, curiosity, and disagreement without degradation.',
    ),
    (
      name: 'Rupture and Repair Cycle',
      description:
          'Assesses whether conflict is followed by acknowledgment, reconnection, and actual repair.',
    ),
    (
      name: 'Affection Withdrawal',
      description:
          'Detects love, warmth, sex, attention, or reassurance being withheld as punishment or leverage.',
    ),
    (
      name: 'Public Humiliation References',
      description:
          'Flags threats, jokes, or actions that embarrass the partner in front of others.',
    ),
    (
      name: 'Substance-Linked Conflict Cues',
      description:
          'Looks for alcohol or drug use being tied to aggression, unreliability, conflict, or harm.',
    ),
    (
      name: 'Parenting Conflict Pressure',
      description:
          'Identifies children, custody, parenting roles, or parental guilt used in conflict or leverage.',
    ),
    (
      name: 'Sexual Boundary Respect',
      description:
          'Assesses respect for consent, pressure, refusal, comfort, timing, and sexual autonomy.',
    ),
    (
      name: 'Digital Harassment Indicators',
      description:
          'Tracks repeated unwanted messages, spam calls, online pressure, surveillance, or platform-based intimidation.',
    ),
    (
      name: 'Monitoring or Surveillance Language',
      description:
          'Flags checking whereabouts, demanding proof, tracking behavior, or constant verification.',
    ),
    (
      name: 'Future Orientation',
      description:
          'Measures whether partners discuss future improvement, commitments, plans, or constructive direction.',
    ),
    (
      name: 'Safety Planning Signals',
      description:
          'Looks for attempts to seek help, create distance, document harm, or plan for physical/emotional safety.',
    ),
    (
      name: 'Mutual De-escalation Attempts',
      description:
          'Tracks pauses, calming language, softer tone, timeouts, and attempts by both partners to reduce intensity.',
    ),
    (
      name: 'Secure Attachment Cues',
      description:
          'Identifies trust, direct reassurance, emotional availability, and comfort with closeness and independence.',
    ),
    (
      name: 'Anxious Attachment Activation',
      description:
          'Flags protest behavior, urgent reassurance needs, abandonment fear, and heightened sensitivity to distance.',
    ),
    (
      name: 'Avoidant Attachment Distancing',
      description:
          'Detects emotional minimization, independence defenses, withdrawal from vulnerability, or discomfort with needs.',
    ),
    (
      name: 'Disorganized Attachment Signals',
      description:
          'Looks for approach-avoid cycles, fear mixed with need, chaotic reactions, or confusing intimacy patterns.',
    ),
    (
      name: 'Emotional Bids and Responses',
      description:
          'Measures invitations for attention, comfort, or connection and whether they are accepted or missed.',
    ),
    (
      name: 'Turning Away from Connection',
      description:
          'Flags ignoring, dismissing, or failing to respond to bids for closeness or support.',
    ),
    (
      name: 'Turning Against Connection',
      description:
          'Detects hostile or punishing responses to attempts at affection, vulnerability, or repair.',
    ),
    (
      name: 'Positive Sentiment Override',
      description:
          'Looks for generosity, benefit-of-the-doubt, fondness, and interpreting conflict through care.',
    ),
    (
      name: 'Negative Sentiment Override',
      description:
          'Flags assuming bad intent, interpreting neutral messages negatively, and persistent hostile framing.',
    ),
    (
      name: 'Harsh Startup Pattern',
      description:
          'Identifies conversations that begin with accusation, attack, contempt, or blame rather than a request.',
    ),
    (
      name: 'Soft Startup Pattern',
      description:
          'Looks for gentle openings using feelings, needs, specific requests, and non-accusatory language.',
    ),
    (
      name: 'Physiological Self-Soothing',
      description:
          'Assesses attempts to pause, breathe, take space, or regulate the body before continuing conflict.',
    ),
    (
      name: 'Conflict Avoidance Pattern',
      description:
          'Tracks repeated avoidance of necessary topics, discomfort, disagreement, or emotional honesty.',
    ),
    (
      name: 'Volatile Conflict Style',
      description:
          'Detects high-intensity conflict with direct expression that may still include engagement and repair.',
    ),
    (
      name: 'Validating Conflict Style',
      description:
          'Measures whether partners acknowledge each other’s perspective while disagreeing.',
    ),
    (
      name: 'Hostile Conflict Style',
      description:
          'Flags frequent criticism, contempt, defensiveness, attacks, and adversarial framing.',
    ),
    (
      name: 'Hostile-Detached Pattern',
      description:
          'Identifies cold hostility, emotional disengagement, contempt, and low repair motivation.',
    ),
    (
      name: 'Compromise Willingness',
      description:
          'Looks for flexibility, negotiation, middle-ground proposals, and sacrifices that respect both needs.',
    ),
    (
      name: 'Influence Acceptance',
      description:
          'Measures openness to being affected by the partner’s feelings, needs, or perspective.',
    ),
    (
      name: 'Gridlocked Conflict Signals',
      description:
          'Flags repeated unsolved issues tied to values, dreams, identity, or chronic incompatibility.',
    ),
    (
      name: 'Solvable Problem Framing',
      description:
          'Detects practical, concrete problem definitions that can lead to specific agreements.',
    ),
    (
      name: 'Shared Meaning References',
      description:
          'Looks for values, rituals, goals, memories, or identity language that creates a shared relationship story.',
    ),
    (
      name: 'Love Map Awareness',
      description:
          'Assesses knowledge of the partner’s inner world, stressors, preferences, fears, and daily life.',
    ),
    (
      name: 'Fondness and Admiration',
      description:
          'Identifies appreciation, respect, warmth, compliments, gratitude, and positive regard.',
    ),
    (
      name: 'Emotional Labor Imbalance',
      description:
          'Flags one partner carrying disproportionate planning, soothing, remembering, explaining, or relationship maintenance.',
    ),
    (
      name: 'Mental Load Dismissal',
      description:
          'Detects minimizing invisible planning work, household coordination, scheduling, or responsibility tracking.',
    ),
    (
      name: 'Weaponized Incompetence Cues',
      description:
          'Looks for claiming inability, confusion, or helplessness to avoid fair responsibility.',
    ),
    (
      name: 'Trauma Trigger Sensitivity',
      description:
          'Measures awareness of triggers, trauma responses, and careful handling of vulnerable topics.',
    ),
    (
      name: 'Hypervigilance Cues',
      description:
          'Flags scanning for danger, over-monitoring tone, fear of mistakes, or constant emotional alertness.',
    ),
    (
      name: 'Abandonment Fear Language',
      description:
          'Detects fear of being left, replaced, ignored, discarded, or emotionally deserted.',
    ),
    (
      name: 'Reassurance Seeking Pattern',
      description:
          'Tracks repeated requests for proof of love, commitment, safety, or continued interest.',
    ),
    (
      name: 'Pursuer-Distancer Cycle',
      description:
          'Identifies one partner escalating pursuit for closeness while the other increases distance.',
    ),
    (
      name: 'Resentment Accumulation',
      description:
          'Looks for stored grievances, repeated past references, bitterness, and unresolved emotional debt.',
    ),
    (
      name: 'Scorekeeping Behavior',
      description:
          'Flags transactional counting of faults, favors, sacrifices, or mistakes to gain leverage.',
    ),
    (
      name: 'Conditional Affection',
      description:
          'Detects love, approval, access, or warmth offered only when compliance is achieved.',
    ),
    (
      name: 'Love Bombing Indicators',
      description:
          'Flags intense affection, promises, pressure, or idealization used to accelerate attachment or control.',
    ),
    (
      name: 'Hoovering Attempts',
      description:
          'Identifies attempts to pull someone back through guilt, nostalgia, promises, crises, or sudden affection.',
    ),
    (
      name: 'DARVO Pattern',
      description:
          'Detects deny, attack, and reverse-victim-offender responses when confronted about harm.',
    ),
    (
      name: 'Victim Stance Pattern',
      description:
          'Flags recurring self-victimization that avoids accountability or redirects attention from harm caused.',
    ),
    (
      name: 'Moral Superiority Framing',
      description:
          'Looks for righteousness, purity claims, or ethical superiority used to dominate conflict.',
    ),
    (
      name: 'Character Assassination',
      description:
          'Detects broad attacks on identity, integrity, mental health, or worth rather than specific behavior.',
    ),
    (
      name: 'Triangulation Indicators',
      description:
          'Flags bringing third parties into conflict to pressure, compare, validate, or destabilize the partner.',
    ),
    (
      name: 'Social Comparison Pressure',
      description:
          'Looks for comparisons to exes, friends, other couples, or ideals used to shame or coerce.',
    ),
    (
      name: 'Autonomy Support',
      description:
          'Measures respect for independent choices, friendships, goals, boundaries, and personal agency.',
    ),
    (
      name: 'Consent and Choice Respect',
      description:
          'Assesses whether decisions are freely made without pressure, guilt, threats, or manipulation.',
    ),
    (
      name: 'Collaborative Planning',
      description:
          'Looks for shared scheduling, joint decisions, coordinated responsibilities, and practical follow-through.',
    ),
    (
      name: 'Repair Follow-Through',
      description:
          'Measures whether promised changes are later reflected in behavior, not just words.',
    ),
    (
      name: 'Changed Behavior Evidence',
      description:
          'Checks for observable, repeated actions showing learning, adjustment, or reduced harmful behavior.',
    ),
    (
      name: 'Emotional Safety Language',
      description:
          'Identifies language that invites honesty, lowers fear, protects dignity, and reassures safe expression.',
    ),
    (
      name: 'Relationship Ambivalence',
      description:
          'Detects uncertainty, mixed commitment, push-pull messaging, or unclear desire to continue.',
    ),
  ];

  return List<PsychologicalMetric>.generate(metricDefinitions.length, (index) {
    final number = index + 1;
    final definition = metricDefinitions[index];
    return PsychologicalMetric(
      id: 'metric_$number',
      name: definition.name,
      description: definition.description,
      severityWeight: number <= 10
          ? 5
          : number <= 30
              ? 3
              : 2,
    );
  }, growable: false);
}

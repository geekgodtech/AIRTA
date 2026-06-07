import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:airta/models.dart';

class DeepSeekApiService {
  static const String deepSeekModel = 'deepseek-v4-flash';
  static const String defaultEndpoint =
      'https://api.deepseek.com/chat/completions';
  // Reduced to stay under 1,048,565 token limit (1 token ≈ 4 chars)
  static const int maximumTranscriptCharacters = 2750000;

  final String apiKey;
  final Uri endpoint;
  final http.Client httpClient;

  DeepSeekApiService({
    required this.apiKey,
    String endpoint = defaultEndpoint,
    http.Client? httpClient,
  })  : endpoint = Uri.parse(endpoint),
        httpClient = httpClient ?? http.Client();

  Future<PsychologicalAnalysisReport> executeForensicAnalysis({
    required ConversationThread targetThread,
    required SelectedMetrics selectedMetrics,
    String? languageCode,
  }) async {
    return _executeWithRetry(
      targetThread: targetThread,
      selectedMetrics: selectedMetrics,
      languageCode: languageCode,
      maxRetries: 3,
    );
  }

  Future<PsychologicalAnalysisReport> _executeWithRetry({
    required ConversationThread targetThread,
    required SelectedMetrics selectedMetrics,
    required int maxRetries,
    String? languageCode,
    int currentAttempt = 0,
  }) async {
    final payload = {
      'model': deepSeekModel,
      'messages': [
        {
          'role': 'system',
          'content':
              _buildSystemPrompt(selectedMetrics, languageCode: languageCode)
        },
        {'role': 'user', 'content': _serializeChatForPrompt(targetThread)},
      ],
      'temperature': 0.15,
      'response_format': {'type': 'json_object'},
    };

    try {

      final response = await httpClient.post(
        endpoint,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $apiKey',
        },
        body: jsonEncode(payload),
      );

      // Handle 429 Rate Limit with retry
      if (response.statusCode == 429) {
        if (currentAttempt < maxRetries) {
          // Exponential backoff: 2s, 4s, 8s
          final delaySeconds = 2 * (1 << currentAttempt);
          await Future.delayed(Duration(seconds: delaySeconds));
          return _executeWithRetry(
            targetThread: targetThread,
            selectedMetrics: selectedMetrics,
            maxRetries: maxRetries,
            currentAttempt: currentAttempt + 1,
          );
        } else {
          throw DeepSeekApiException(
            statusCode: response.statusCode,
            responseBody: response.body,
          );
        }
      }

      if (response.statusCode < 200 || response.statusCode >= 300) {
        throw DeepSeekApiException(
          statusCode: response.statusCode,
          responseBody: response.body,
        );
      }

      return _deserializeDeepSeekResponseToModel(response.body);
    } catch (e) {
      if (e is DeepSeekApiException) {
        rethrow;
      }
      if (e.toString().contains('SocketException') ||
          e.toString().contains('Failed host lookup')) {
        throw Exception(
          'Network error: Cannot reach DeepSeek API. '
          'Please check your internet connection and try again. '
          'If using VPN, try disabling it. '
          'Original error: $e',
        );
      }
      rethrow;
    }
  }

  String _buildSystemPrompt(SelectedMetrics selectedMetrics,
      {String? languageCode}) {
    final languageInstruction = languageCode != null && languageCode != 'en'
        ? '\nLANGUAGE REQUIREMENT: You MUST provide ALL analysis, reports, summaries, verdicts, and conclusions in ${_getLanguageName(languageCode)} language. All text output including field names in JSON should be in ${_getLanguageName(languageCode)}.'
        : '';

    return '''
You are an expert digital forensic psychologist performing a neutral, zero-bias thematic analysis of the provided communication timeline.
You must map the interaction strictly and logically against these selected metrics: ${selectedMetrics.names.join(', ')}.$languageInstruction
CRITICAL REQUIREMENT: For EACH selected metric, you must provide at least one specific quoted example from the conversation transcript that demonstrates that metric. If a metric is not evidenced in the conversation, score it 0.0 and do not fabricate quotes.
The selected metric count controls analysis depth: when fewer metrics are selected, provide deeper, more concentrated findings for each selected metric; when many metrics are selected, distribute attention across them and keep each metric's analysis broader and less granular.
Do not invent metrics, assume intent, assign blame by default, or apply predetermined judgmental framing.
Base every conclusion on observable language patterns, contextual evidence, and direct logical correspondence to the selected metrics.
Return only valid JSON. Do not include markdown, code fences, apologies, or explanatory text outside the JSON object. Escape all double quotes inside string values.
Return the analysis strictly as a JSON object containing:
1. "executiveSummary": A comprehensive clinical overview (minimum 200 words) that references the specific metrics analyzed, describes the overall communication dynamic, identifies key patterns, and provides context for the findings. Include specific observations about the relationship's health indicators.
2. "metricScores": A map of ALL selected metrics (${selectedMetrics.names.join(', ')}) with a float score from 0.0 (not evidenced) to 1.0 (strongly evidenced). You MUST include scores for every single selected metric.
3. "evidenceExamples": An array of objects where EACH SELECTED METRIC that scored above 0.0 has at least one corresponding evidence example. Each object must contain "speaker" (who said it), "behavior" (which specific metric from the selected list this demonstrates), "context" (detailed explanation of why this quote demonstrates the metric and its significance), and "quote" (exact text from the transcript). Only include direct quotes that appear in the transcript. Do not fabricate quotes. Aim for comprehensive coverage of all selected metrics with evidence.
4. "forensicVerdict": A detailed neutral synthesis (minimum 150 words) that specifically addresses the selected metrics and their evidenced patterns, discusses the severity and frequency of problematic behaviors, acknowledges limitations of the analysis, and provides balanced perspective on both partners' contributions to the dynamic.
5. "senderName": The best available display name for the message sender/current device owner, inferred only from transcript metadata or conversation evidence. Use "Sender" if unknown.
6. "receiverName": The best available display name for the other recurring relationship partner, inferred only from transcript metadata or conversation evidence. Use "Receiver" if unknown.
7. "partnerOneAnalysis": A thorough analysis (minimum 150 words) of the sender/current device owner's communication patterns, specifically addressing how they performed on the selected metrics with multiple quoted examples. Discuss their strengths, weaknesses, patterns of escalation or de-escalation, emotional regulation, and overall contribution to relationship health.
8. "partnerTwoAnalysis": A thorough analysis (minimum 150 words) of the receiver/other partner's communication patterns, specifically addressing how they performed on the selected metrics with multiple quoted examples. Discuss their strengths, weaknesses, patterns of escalation or de-escalation, emotional regulation, and overall contribution to relationship health.
9. "primaryProblemConclusion": A detailed final conclusion (minimum 100 words) identifying which partner is the primary problem contributor based on the selected metrics with specific reasoning, or stating that responsibility is shared/indeterminate if the evidence does not support a single primary contributor. Explain the reasoning behind this determination with reference to specific metrics and patterns.
''';
  }

  String _getLanguageName(String languageCode) {
    final languageNames = {
      'en': 'English',
      'es': 'Spanish',
      'fr': 'French',
      'de': 'German',
      'it': 'Italian',
      'pt': 'Portuguese',
      'nl': 'Dutch',
      'ru': 'Russian',
      'zh': 'Chinese',
      'ja': 'Japanese',
      'ko': 'Korean',
      'ar': 'Arabic',
      'hi': 'Hindi',
      'tr': 'Turkish',
      'pl': 'Polish',
      'uk': 'Ukrainian',
    };
    return languageNames[languageCode] ?? languageCode.toUpperCase();
  }

  String _serializeChatForPrompt(ConversationThread targetThread) {
    final transcriptLines = targetThread.messages.map((message) {
      final timestamp = message.timestamp.toIso8601String();
      final compactBody =
          message.textBody.replaceAll(RegExp(r'\s+'), ' ').trim();
      return '[$timestamp] ${message.senderIdentifier}: $compactBody';
    }).toList(growable: false);

    final transcript = _buildBudgetedTranscript(transcriptLines);

    return '''
Thread ID: ${targetThread.threadId}
Platform Source: ${targetThread.platformSource}
Total Messages: ${targetThread.totalMessages}
Payload Note: ${transcriptLines.length == targetThread.messages.length && transcript.length < transcriptLines.join('\n').length ? 'Transcript was sampled to fit provider request limits.' : 'Transcript was included within provider request limits.'}

Transcript:
$transcript
''';
  }

  String _buildBudgetedTranscript(List<String> transcriptLines) {
    final fullTranscript = transcriptLines.join('\n');
    if (fullTranscript.length <= maximumTranscriptCharacters) {
      return fullTranscript;
    }

    final sectionBudget = maximumTranscriptCharacters ~/ 3;
    final beginning = _takeFromBeginning(transcriptLines, sectionBudget);
    final middle = _takeFromMiddle(transcriptLines, sectionBudget);
    final ending = _takeFromEnd(transcriptLines, sectionBudget);

    return [
      '--- BEGINNING SAMPLE ---',
      ...beginning,
      '--- MIDDLE SAMPLE ---',
      ...middle,
      '--- ENDING SAMPLE ---',
      ...ending,
    ].join('\n');
  }

  List<String> _takeFromBeginning(List<String> lines, int characterBudget) {
    final selected = <String>[];
    var usedCharacters = 0;

    for (final line in lines) {
      if (usedCharacters + line.length > characterBudget) {
        break;
      }

      selected.add(line);
      usedCharacters += line.length;
    }

    return selected;
  }

  List<String> _takeFromMiddle(List<String> lines, int characterBudget) {
    final selected = <String>[];
    var usedCharacters = 0;
    final startIndex = lines.length ~/ 2;

    for (var index = startIndex; index < lines.length; index += 1) {
      final line = lines[index];
      if (usedCharacters + line.length > characterBudget) {
        break;
      }

      selected.add(line);
      usedCharacters += line.length;
    }

    return selected;
  }

  List<String> _takeFromEnd(List<String> lines, int characterBudget) {
    final selected = <String>[];
    var usedCharacters = 0;

    for (var index = lines.length - 1; index >= 0; index -= 1) {
      final line = lines[index];
      if (usedCharacters + line.length > characterBudget) {
        break;
      }

      selected.insert(0, line);
      usedCharacters += line.length;
    }

    return selected;
  }

  PsychologicalAnalysisReport _deserializeDeepSeekResponseToModel(
    String responseBody,
  ) {
    final decoded = jsonDecode(responseBody) as Map<String, dynamic>;
    final choices = decoded['choices'] as List<dynamic>?;

    if (choices == null || choices.isEmpty) {
      throw const FormatException('AI response did not include any choices.');
    }

    final firstChoice = choices.first as Map<String, dynamic>;
    final message = firstChoice['message'] as Map<String, dynamic>?;
    final content = message?['content'] as String?;

    if (content == null || content.trim().isEmpty) {
      throw const FormatException('AI response message content was empty.');
    }

    return PsychologicalAnalysisReport.fromJson(_decodeReportJson(content));
  }

  Map<String, dynamic> _decodeReportJson(String content) {
    final trimmedContent = content.trim();

    try {
      return jsonDecode(trimmedContent) as Map<String, dynamic>;
    } on FormatException {
      final extractedJson = _extractJsonObject(trimmedContent);
      final repairedJson = _repairUnescapedQuoteListItems(extractedJson);
      return jsonDecode(repairedJson) as Map<String, dynamic>;
    }
  }

  String _extractJsonObject(String content) {
    final firstBrace = content.indexOf('{');
    final lastBrace = content.lastIndexOf('}');

    if (firstBrace == -1 || lastBrace == -1 || lastBrace <= firstBrace) {
      return content;
    }

    return content.substring(firstBrace, lastBrace + 1);
  }

  String _repairUnescapedQuoteListItems(String content) {
    final lines = content.split('\n');
    final repairedLines = <String>[];
    var isInsideEvidentiaryQuotes = false;

    for (final line in lines) {
      final trimmedLine = line.trim();

      if (trimmedLine.startsWith('"evidentiaryQuotes"') &&
          trimmedLine.contains('[')) {
        isInsideEvidentiaryQuotes = true;
        repairedLines.add(line);
        continue;
      }

      if (isInsideEvidentiaryQuotes && trimmedLine.startsWith(']')) {
        isInsideEvidentiaryQuotes = false;
        repairedLines.add(line);
        continue;
      }

      if (isInsideEvidentiaryQuotes &&
          trimmedLine.startsWith('"') &&
          trimmedLine.length > 1) {
        final hasTrailingComma = trimmedLine.endsWith(',');
        final itemText = hasTrailingComma
            ? trimmedLine.substring(0, trimmedLine.length - 1)
            : trimmedLine;
        final firstQuote = itemText.indexOf('"');
        final lastQuote = itemText.lastIndexOf('"');

        if (lastQuote > firstQuote) {
          final indentation = line.substring(0, line.indexOf(trimmedLine));
          final repairedItem = jsonEncode(
            itemText.substring(firstQuote + 1, lastQuote),
          );
          repairedLines.add(
            '$indentation$repairedItem${hasTrailingComma ? ',' : ''}',
          );
          continue;
        }
      }

      repairedLines.add(line);
    }

    return repairedLines.join('\n');
  }
}

class DeepSeekApiException implements Exception {
  final int statusCode;
  final String responseBody;

  const DeepSeekApiException({
    required this.statusCode,
    required this.responseBody,
  });

  @override
  String toString() {
    if (statusCode == 413) {
      return 'AI rejected the request because the conversation payload was too large. The app now samples large transcripts before sending them; please run the analysis again.';
    }

    if (statusCode == 429) {
      return 'Rate limit exceeded. The AI service is experiencing high demand. The app automatically retried but the limit persists. Please wait a few minutes and try again.';
    }

    return 'AI API error (statusCode: $statusCode, responseBody: $responseBody)';
  }
}

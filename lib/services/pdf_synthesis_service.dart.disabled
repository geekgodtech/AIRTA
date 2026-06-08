import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:airta/models.dart';

class PdfSynthesisService {
  Future<Uint8List> constructForensicDocument({
    required ConversationThread thread,
    required PsychologicalAnalysisReport report,
    DateTime? dateRangeStart,
    DateTime? dateRangeEnd,
  }) async {
    final document = pw.Document();

    document.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(32),
        build: (context) {
          final headerChildren = [
            pw.Header(
              level: 0,
              child: pw.Text('AI Relationship Toxicity Analyzer Report'),
            ),
            pw.Text('Source: ${_sanitizePdfText(thread.platformSource)}'),
            pw.Text('Messages analyzed: ${thread.totalMessages}'),
          ];

          // Add date range if specified
          if (dateRangeStart != null && dateRangeEnd != null) {
            final dateFormat = '${dateRangeStart.month}/${dateRangeStart.day}/${dateRangeStart.year}';
            final endDateFormat = '${dateRangeEnd.month}/${dateRangeEnd.day}/${dateRangeEnd.year}';
            headerChildren.add(pw.Text('Date range for analysis: $dateFormat - $endDateFormat'));
          }

          headerChildren.add(pw.SizedBox(height: 18));

          return [
            ...headerChildren,
            pw.Header(level: 1, child: pw.Text('Executive Summary')),
            pw.Text(_sanitizePdfText(report.executiveSummary)),
            pw.SizedBox(height: 14),
            pw.Header(level: 1, child: pw.Text('Metric Scores')),
            pw.TableHelper.fromTextArray(
              headers: ['Metric', 'Score'],
              data: report.metricScores.entries
                  .map(
                    (entry) => [
                      _sanitizePdfText(entry.key),
                      '${(entry.value.clamp(0.0, 1.0) * 100).toStringAsFixed(0)}%',
                    ],
                  )
                  .toList(),
              headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              headerDecoration: const pw.BoxDecoration(
                color: PdfColors.grey300,
              ),
              cellAlignment: pw.Alignment.centerLeft,
              cellAlignments: {1: pw.Alignment.centerRight},
            ),
            pw.SizedBox(height: 14),
            pw.Header(level: 1, child: pw.Text('Contextual Evidence Examples')),
            ...report.evidenceExamples.map(
              (example) => pw.Padding(
                padding: const pw.EdgeInsets.only(bottom: 8),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      _sanitizePdfText(
                        '${example.speaker}: ${example.behavior}',
                      ),
                      style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                    ),
                    pw.Text(_sanitizePdfText(example.context)),
                    pw.Text(
                      _truncatePdfText(
                        _sanitizePdfText('"${example.quote}"'),
                        600,
                      ),
                      style: pw.TextStyle(fontStyle: pw.FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ),
            if (report.forensicVerdict.isNotEmpty) ...[
              pw.SizedBox(height: 14),
              pw.Header(level: 1, child: pw.Text('Neutral Synthesis')),
              pw.Text(_sanitizePdfText(report.forensicVerdict)),
            ],
            if (report.partnerOneAnalysis.isNotEmpty) ...[
              pw.SizedBox(height: 14),
              pw.Header(
                level: 1,
                child: pw.Text('Analysis of ${report.senderName} (Sender)'),
              ),
              pw.Text(_sanitizePdfText(report.partnerOneAnalysis)),
            ],
            if (report.partnerTwoAnalysis.isNotEmpty) ...[
              pw.SizedBox(height: 14),
              pw.Header(
                level: 1,
                child: pw.Text('Analysis of ${report.receiverName} (Receiver)'),
              ),
              pw.Text(_sanitizePdfText(report.partnerTwoAnalysis)),
            ],
            if (report.primaryProblemConclusion.isNotEmpty) ...[
              pw.SizedBox(height: 14),
              pw.Header(level: 1, child: pw.Text('Final Conclusion')),
              pw.Text(_sanitizePdfText(report.primaryProblemConclusion)),
            ],
            pw.SizedBox(height: 14),
            pw.Header(level: 1, child: pw.Text('Transcript Excerpt')),
            ...thread.messages.take(75).map((message) {
              final transcriptLine =
                  '[${message.timestamp.toIso8601String()}] ${message.senderIdentifier}: ${message.textBody}';

              return pw.Padding(
                padding: const pw.EdgeInsets.only(bottom: 4),
                child: pw.Text(
                  _truncatePdfText(_sanitizePdfText(transcriptLine), 800),
                ),
              );
            }),
          ];
        },
      ),
    );

    return document.save();
  }

  String _sanitizePdfText(String value) {
    return value.replaceAll(RegExp(r'[^\x09\x0A\x0D\x20-\x7E]'), ' ');
  }

  String _truncatePdfText(String value, int maximumLength) {
    if (value.length <= maximumLength) {
      return value;
    }

    return '${value.substring(0, maximumLength)}...';
  }
}

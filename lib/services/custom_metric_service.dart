import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:airta/models.dart';

/// Manages user-purchased custom psychological metrics.
/// Each custom metric costs $4.99 (one-time) and is stored permanently on device.
class CustomMetricService extends ChangeNotifier {
  static final CustomMetricService _instance = CustomMetricService._internal();
  factory CustomMetricService() => _instance;
  CustomMetricService._internal();

  static const String _customMetricsKey = 'custom_metrics_v1';
  static const String customMetricProductId = 'custom_metric_4_99';
  static const String customMetricIdPrefix = 'custom_metric_';

  List<PsychologicalMetric> _customMetrics = [];
  List<PsychologicalMetric> get customMetrics =>
      List.unmodifiable(_customMetrics);

  bool get hasCustomMetrics => _customMetrics.isNotEmpty;

  /// Load saved custom metrics from local storage.
  Future<void> initialize() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_customMetricsKey);
      if (raw != null) {
        final List<dynamic> list = jsonDecode(raw) as List<dynamic>;
        _customMetrics = list
            .map((e) =>
                PsychologicalMetric.fromJson(e as Map<String, dynamic>))
            .toList();
        notifyListeners();
      }
    } catch (e) {
      debugPrint('CustomMetricService.initialize error: $e');
    }
  }

  /// Persist all custom metrics to local storage.
  Future<void> _save() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final encoded =
          jsonEncode(_customMetrics.map((m) => m.toJson()).toList());
      await prefs.setString(_customMetricsKey, encoded);
    } catch (e) {
      debugPrint('CustomMetricService._save error: $e');
    }
  }

  /// Add a new custom metric (called after successful purchase + user confirmation).
  Future<PsychologicalMetric> commitCustomMetric({
    required String name,
    required String description,
  }) async {
    final index = _customMetrics.length + 1;
    final metric = PsychologicalMetric(
      id: '$customMetricIdPrefix${index}_${DateTime.now().millisecondsSinceEpoch}',
      name: name,
      description: description,
      severityWeight: 3,
    );
    _customMetrics.add(metric);
    await _save();
    notifyListeners();
    return metric;
  }

  /// Whether a metric ID belongs to the user's custom collection.
  static bool isCustomId(String id) => id.startsWith(customMetricIdPrefix);
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeService extends ChangeNotifier {
  static final ThemeService _instance = ThemeService._internal();
  factory ThemeService() => _instance;
  ThemeService._internal();

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      final prefs = await SharedPreferences.getInstance();

      // First check if user has a saved preference
      final savedDarkMode = prefs.getBool('dark_mode');

      if (savedDarkMode != null) {
        _isDarkMode = savedDarkMode;
      } else {
        // If no saved preference, use device theme
        final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
        _isDarkMode = brightness == Brightness.dark;
      }

      _isInitialized = true;
      notifyListeners();
    } catch (e) {
      print('Theme service initialization error (non-fatal): $e');
      _isInitialized = true;
    }
  }

  Future<void> toggleDarkMode() async {
    _isDarkMode = !_isDarkMode;
    await _savePreference();
    notifyListeners();
  }

  Future<void> setDarkMode(bool isDark) async {
    _isDarkMode = isDark;
    await _savePreference();
    notifyListeners();
  }

  Future<void> _savePreference() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('dark_mode', _isDarkMode);
    } catch (e) {
      print('Error saving dark mode preference: $e');
    }
  }
}

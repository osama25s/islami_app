import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  String _language = 'en';

  ThemeMode get themeMode => _themeMode;
  String get language => _language;

  SettingsProvider() {
    _loadPreferences();
  }

  void _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    _themeMode = ThemeMode.values[prefs.getInt('themeMode') ?? 0];
    _language = prefs.getString('language') ?? 'ar';
    notifyListeners();
  }

  void ChangeTheme(ThemeMode selectedThemeMode) async {
    _themeMode = selectedThemeMode;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('themeMode', selectedThemeMode.index);
  }

  void changeLanguage(String selectedLanguage) async {
    _language = selectedLanguage;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', selectedLanguage);
  }
}

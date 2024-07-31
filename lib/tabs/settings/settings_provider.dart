import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String language = 'en';
  void ChangeTheme(ThemeMode selectedthememode) {
    themeMode = selectedthememode;

    notifyListeners();
  }

  void ChangeLanguage(String lang) {
    language = lang;
    notifyListeners();
  }
}

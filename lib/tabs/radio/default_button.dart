import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart';

class Default_Button extends StatelessWidget {
  IconData icon;
  double size;
  void Function() onpress;
  Default_Button(
      {required this.icon, required this.size, required this.onpress});
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return IconButton(
      icon: Icon(
        icon,
        size: size,
        color: settingsProvider.themeMode == ThemeMode.light
            ? AppTheme.lightprimary
            : AppTheme.gold,
      ),
      onPressed: onpress,
    );
  }
}

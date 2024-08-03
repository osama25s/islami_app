import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Center(
      child: CircularProgressIndicator(
        color: settingsProvider.themeMode == ThemeMode.light
            ? AppTheme.lightprimary
            : AppTheme.gold,
      ),
    );
  }
}

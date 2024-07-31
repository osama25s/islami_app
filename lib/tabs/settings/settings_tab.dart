import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dark Mode',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              Switch(
                value: settingsProvider.themeMode == ThemeMode.dark,
                onChanged: (isdark) {
                  settingsProvider.ChangeTheme(
                      isdark ? ThemeMode.dark : ThemeMode.light);
                },
                activeTrackColor: AppTheme.gold,
                inactiveTrackColor: Theme.of(context).primaryColor,
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Language',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value:settingsProvider.language,
                  items: [
                    DropdownMenuItem(
                      value: 'en',
                      child: Text(
                        'English',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'ar',
                      child: Text(
                        'العربية',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    if (value == null) return;
                    settingsProvider.ChangeLanguage(value);
                  },
                  dropdownColor: AppTheme.white,
                  borderRadius: BorderRadius.circular(16),
                  
                  
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

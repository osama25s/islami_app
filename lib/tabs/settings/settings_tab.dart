import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              AppLocalizations.of(context)!.darktheme,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            value: settingsProvider.themeMode == ThemeMode.dark,
            onChanged: (isdark) {
              
              settingsProvider.ChangeTheme(
                  isdark ? ThemeMode.dark : ThemeMode.light);
            },
            activeTrackColor: AppTheme.gold,
            inactiveTrackColor: Colors.grey,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.language,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: settingsProvider.language,
                  items: [
                    DropdownMenuItem(
                      value: 'en',
                      child: Text(
                        AppLocalizations.of(context)!.english,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'ar',
                      child: Text(
                        AppLocalizations.of(context)!.arabic,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    if (value == null) return;
                    settingsProvider.changeLanguage(value);
                  },
                  dropdownColor: settingsProvider.themeMode == ThemeMode.light
                      ? AppTheme.white
                      : AppTheme.darkprimary,
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

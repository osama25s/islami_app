import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/hadeth/hadeth_data.dart';
import 'package:islami/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String reoutename = 'HadethDetailsScreen';
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadethContenet data =
        ModalRoute.of(context)!.settings.arguments as HadethContenet;
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingsProvider.themeMode == ThemeMode.light
              ? 'assets/images/default_bg.png'
              : 'assets/images/dark_bg.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          
          title: Text(
            data.title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.all(24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: settingsProvider.themeMode == ThemeMode.light
                  ? AppTheme.white
                  : AppTheme.darkprimary),
          child: ListView.builder(
            itemBuilder: (_, index) => Text(
              data.content[index],
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            itemCount: data.content.length,
          ),
        ),
      ),
    );
  }
}

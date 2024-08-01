// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/settings/settings_provider.dart';
import 'package:islami/tabs/settings/settings_tab.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home_Screen extends StatefulWidget {
  static const String routname = '/';

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int currentindex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(settingsProvider.themeMode == ThemeMode.light
                    ? 'assets/images/default_bg.png'
                    : 'assets/images/dark_bg.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islami),
          ),
          backgroundColor: Colors.transparent,
          body: tabs[currentindex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentindex,
            onTap: (index) {
              currentindex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                label: AppLocalizations.of(context)!.quran,
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/icon_quran.png',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: AppLocalizations.of(context)!.hadeth,
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/icon_hadeth.png',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: AppLocalizations.of(context)!.sebha,
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/icon_sebha.png',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: AppLocalizations.of(context)!.radio,
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/icon_radio.png',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.settings, icon: Icon(Icons.settings_outlined))
            ],
          ),
        ));
  }
}

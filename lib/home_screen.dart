// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/settings/settings_tab.dart';

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
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/default_bg.png'),fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            title: Text('إسلامي'),
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
                label: 'Quran',
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/icon_quran.png',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Hadeth',
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/icon_hadeth.png',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Sebha',
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/icon_sebha.png',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Radio',
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/icon_radio.png',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                  label: 'Settings', icon: Icon(Icons.settings_outlined))
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/quran/quran_tab.dart';

class QuranDeatailsScreen extends StatelessWidget {
  static const String routname = 'Quran_Deatails';
  List<String> ayat = [
    'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ ',
    'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
    'الرَّحْمَنِ الرَّحِيمِ',
    ' مَالِكِ يَوْمِ الدِّينِ',
    ' إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
    ' اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ',
    ' صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين',
  ];
  @override
  Widget build(BuildContext context) {
    suraModel data = ModalRoute.of(context)!.settings.arguments as suraModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/default_bg.png',
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(data.suraname),
        ),
        body: Container(
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppTheme.white
          ),
          child: ListView.builder(
            itemBuilder: (_, index) => Text(ayat[index],
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
            ),
            itemCount: ayat.length,
          ),
        ),
      ),
    );
  }
}

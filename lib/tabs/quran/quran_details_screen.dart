import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart';

class QuranDeatailsScreen extends StatefulWidget {
  static const String routname = 'Quran_Deatails';

  @override
  State<QuranDeatailsScreen> createState() => _QuranDeatailsScreenState();
}

class _QuranDeatailsScreenState extends State<QuranDeatailsScreen> {
  List<String> ayat = [];

  late suraModel data;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as suraModel;
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    if (ayat.isEmpty) {
      loadSuraFile();
    }
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
          title: Text(data.suraname),
        ),
        body: Container(
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.all(24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: settingsProvider.themeMode == ThemeMode.light
                  ? AppTheme.white
                  : AppTheme.darkprimary),
          child: ayat.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: AppTheme.lightprimary,
                  ),
                )
              : ListView.builder(
                  itemBuilder: (_, index) => Text(
                    ayat[index],
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  itemCount: ayat.length,
                ),
        ),
      ),
    );
  }

  Future<void> loadSuraFile() async {
    String sura =
        await rootBundle.loadString('assets/files/${1 + data.index}.txt');
    ayat = sura.split('\r\n');
    setState(() {});
  }
}

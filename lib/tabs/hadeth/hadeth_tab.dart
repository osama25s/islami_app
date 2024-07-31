import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/hadeth/hadeth_data.dart';
import 'package:islami/tabs/hadeth/hadeth_details_screen.dart';
import 'package:islami/tabs/settings/settings_provider.dart';
import 'package:islami/wigets/loading_indicator.dart';
import 'package:provider/provider.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethContenet> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    if (ahadeth.isEmpty) {
      loadAhadethFile();
    }
    return Column(
      children: [
        Image.asset(
          'assets/images/hadeth_logo.png',
          height: MediaQuery.of(context).size.height * 0.27,
        ),
        Divider(
          color: settingsProvider.themeMode == ThemeMode.light
              ? AppTheme.lightprimary
              : AppTheme.gold,
          thickness: 2,
          height: 0,
        ),
        Text(
          'الأحاديث',
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        Divider(
          color: settingsProvider.themeMode == ThemeMode.light
              ? AppTheme.lightprimary
              : AppTheme.gold,
          thickness: 2,
          height: 0,
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: ahadeth.isEmpty
              ? LoadingIndicator()
              : ListView.separated(
                  itemBuilder: (_, index) => InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        HadethDetailsScreen.reoutename,
                        arguments: HadethContenet(
                            title: ahadeth[index].title,
                            content: ahadeth[index].content),
                      );
                    },
                    child: Text(
                      ahadeth[index].title,
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  separatorBuilder: (_, index) => SizedBox(height: 16),
                  itemCount: ahadeth.length,
                ),
        ),
      ],
    );
  }

  loadAhadethFile() async {
    String hadethfile = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethText = hadethfile.split('#');
    ahadeth = hadethText.map(
      (hadethText) {
        List<String> lines = hadethText.trim().split('\n');
        String title = lines.first;
        lines.removeAt(0);
        List<String> content = lines;
        return HadethContenet(
          title: title,
          content: content,
        );
      },
    ).toList();
    setState(() {});
  }
}

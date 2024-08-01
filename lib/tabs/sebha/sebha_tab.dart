import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int tasbeh = 0;
  double degree = 28.76;
  String lable = 'سبحان الله';
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 10),
                child: Image.asset(
                  settingsProvider.themeMode == ThemeMode.light
                      ? 'assets/images/head_sebha_logo.png'
                      : 'assets/images/head_sebha_dark.png',
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width / 4,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 14.3),
                child: GestureDetector(
                  onTap: () {
                    tasbeh++;
                    if (tasbeh == 34) {
                      lable = 'الحمد لله';
                    } else if (tasbeh == 67) {
                      lable = 'الله اكبر';
                    } else if (tasbeh == 100) {
                      tasbeh = 0;
                      lable = 'سبحان الله';
                    }

                    degree += 10.03;
                    setState(() {});
                  },
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(degree),
                    child: Image.asset(
                      settingsProvider.themeMode == ThemeMode.light
                          ? 'assets/images/body_sebha_logo.png'
                          : 'assets/images/body_sebha_dark.png',
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Text(
           AppLocalizations.of(context)!.tasbeh,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 30),
            height: MediaQuery.of(context).size.height / 10.5,
            width: MediaQuery.of(context).size.width / 6,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              '$tasbeh',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 17,
            width: MediaQuery.of(context).size.width / 2.8,
            decoration: BoxDecoration(
              color: settingsProvider.themeMode == ThemeMode.light
                  ? AppTheme.lightprimary
                  : AppTheme.gold,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              lable,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: settingsProvider.themeMode == ThemeMode.light
                      ? AppTheme.white
                      : AppTheme.black),
            ),
          ),
        ],
      ),
    );
  }
}

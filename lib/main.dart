import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        Home_Screen.routname: (context) => Home_Screen(),
      },
    );
  }
}

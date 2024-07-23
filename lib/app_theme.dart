import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightprimary = Color(0xffB7935F);
  static const Color darkprimary = Color(0xff141A2E);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xff242424);
  static const Color gold = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor:black,
      unselectedItemColor: white,
      backgroundColor: lightprimary
    ),
  );
  static ThemeData darkTheme = ThemeData();
}

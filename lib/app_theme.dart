// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightprimary = Color(0xffB7935F);
  static const Color darkprimary = Color(0xff141A2E);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xff242424);
  static const Color gold = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
        headlineSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: black,
        ),
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: black,
        )),
    iconTheme: IconThemeData(
      color: lightprimary,
      size: 24.0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: black,
      unselectedItemColor: white,
      backgroundColor: lightprimary,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: black,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData();
}

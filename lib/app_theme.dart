// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightprimary = Color(0xffB7935F);
  static const Color darkprimary = Color(0xff141A2E);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xff242424);
  static const Color gold = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
  
    primaryColor: lightprimary,
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
      foregroundColor: black,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: black,
      ),
    ),
    switchTheme: SwitchThemeData(
        trackColor: MaterialStatePropertyAll(lightprimary),
        thumbColor: MaterialStatePropertyAll(black)),
  );

  //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  static ThemeData darkTheme = ThemeData(
    
    primaryColor: darkprimary,
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
        headlineSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: white,
        ),
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: gold,
        )),
    iconTheme: IconThemeData(
      color: darkprimary,
      size: 24.0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: gold,
      unselectedItemColor: white,
      backgroundColor: darkprimary,
    ),
    appBarTheme: AppBarTheme(
      foregroundColor: white,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: white,
      ),
    ),
    switchTheme: SwitchThemeData(
      trackColor: MaterialStatePropertyAll(AppTheme.darkprimary),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Home_Screen.routname:(context) => Home_Screen(),
      },
      
    );
  }
}

import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  static const String routname = '/';
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/default_bg.png'))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
        ));
  }
}

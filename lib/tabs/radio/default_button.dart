import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';

class Default_Button extends StatelessWidget {
  IconData icon;
  double size;
  void Function() onpress;
  Default_Button(
      {required this.icon, required this.size, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: size,
        color: AppTheme.lightprimary,
      ),
      onPressed: onpress,
    );
  }
}

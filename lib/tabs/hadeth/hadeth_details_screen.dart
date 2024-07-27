import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/hadeth/hadeth_data.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String reoutename = 'HadethDetailsScreen';
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadethContenet data =
        ModalRoute.of(context)!.settings.arguments as HadethContenet;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/default_bg.png',
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            data.title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.all(24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: AppTheme.white),
          child: ListView.builder(
            itemBuilder: (_, index) => Text(
              data.content[index],
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            itemCount: data.content.length,
          ),
        ),
      ),
    );
  }
}

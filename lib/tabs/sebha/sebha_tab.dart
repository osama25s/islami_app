import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami/app_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int tasbeh = 0;
  double degree = 28.76;
  @override
  Widget build(BuildContext context) {
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
                  'assets/images/head_sebha_logo.png',
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
                    degree += 10.03;
                    setState(() {});
                  },
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(degree),
                    //28.76
                    child: Image.asset(
                      'assets/images/body_sebha_logo.png',
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
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 30),
            height: MediaQuery.of(context).size.height / 11,
            width: MediaQuery.of(context).size.width / 6,
            decoration: BoxDecoration(
              color: AppTheme.lightprimary.withOpacity(0.6),
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
              color: AppTheme.lightprimary,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              'سبحان الله',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

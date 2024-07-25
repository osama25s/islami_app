import 'package:flutter/material.dart';
import 'package:islami/tabs/radio/default_button.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 18),
          child: Text(
            'إذاعة القرآن الكريم',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Default_Button(
                icon: Icons.skip_previous_rounded, size: 35, onpress: () {}),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 14),
              child: Default_Button(
                  icon: Icons.play_arrow_rounded, size: 55, onpress: () {}),
            ),
            Default_Button(
                icon: Icons.skip_next_rounded, size: 35, onpress: () {}),
          ],
        )
      ],
    );
  }
}

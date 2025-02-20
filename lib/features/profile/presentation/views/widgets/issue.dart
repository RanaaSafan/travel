import 'package:flutter/material.dart';
import 'package:travel_course/core/styles/app_text_styles.dart';

class Issue extends StatelessWidget {
  final String title;
  final Icon icon1;
  final IconButton icon2;
  const Issue({super.key, required this.title, required this.icon1, required this.icon2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          icon1,
          SizedBox(width: 10,),
          Text(title,style: AppTextStyles.rewardtext,),
          Spacer(),
          icon2,

        ],
      ),
    );
  }
}

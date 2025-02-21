import 'package:flutter/material.dart';

import '../../../../../core/styles/app_size_box.dart';
import '../../../../../core/styles/app_text_styles.dart';

class ColumnPoint extends StatelessWidget {
  final String title;
  final String number;
  const ColumnPoint({super.key, required this.title, required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppTextStyles.rewardtext,
        ),
        AppSizeBox.size10,
        Text(
          number,
          style: AppTextStyles.rewardnumber,
        ),
      ],
    );
  }
}

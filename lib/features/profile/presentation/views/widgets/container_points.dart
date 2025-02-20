import 'package:flutter/material.dart';
import 'package:travel_course/core/styles/app_colors.dart';
import 'package:travel_course/core/styles/app_text_styles.dart';

import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/styles/app_size_box.dart';

class ContainerPoints extends StatelessWidget {
  const ContainerPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.spaceButton,
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: AppColors.colorText,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                color: AppColors.colorDescriptionOnboarding,
                //color: Colors.black.withOpacity(0.2), // لون الظل مع شفافية
                spreadRadius: 1, // انتشار الظل
                blurRadius: 5, // مدى التمويه
                offset: Offset(4, 3), // اتجاه الظل (يمين وأسفل)),
              ),
            ]),
        child: const Center(
          child: Row(
            children: [
              AppSizeBox.sizeWidth25,
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Reward Points",
                    style: AppTextStyles.rewardtext,
                  ),
                  AppSizeBox.size10,
                  Text(
                    "0.0",
                    style: AppTextStyles.rewardnumber,
                  ),
                ],
              ),
              AppSizeBox.sizeWidth25,
              VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                width: 20, // المسافة التي يشغلها الفاصل
              ),
              AppSizeBox.sizeWidth25,
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Travel Trips",
                    style: AppTextStyles.rewardtext,
                  ),
                  AppSizeBox.size10,
                  Text(
                    "0.0",
                    style: AppTextStyles.rewardnumber,
                  ),
                ],
              ),
              AppSizeBox.sizeWidth25,
              VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                width: 20, // المسافة التي يشغلها الفاصل
              ),
              AppSizeBox.sizeWidth25,
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bucket List",
                    style: AppTextStyles.rewardtext,
                  ),
                  AppSizeBox.size10,
                  Text(
                    "0.0",
                    style: AppTextStyles.rewardnumber,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

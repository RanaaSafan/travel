import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_course/core/styles/app_colors.dart';
import 'package:travel_course/features/profile/presentation/views/widgets/column_point.dart';

import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/styles/app_size_box.dart';

class ContainerPoints extends StatelessWidget {
  const ContainerPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.spaceButton,
      child: Container(
        width: double.infinity.w,
        height: 150.h,
        decoration: BoxDecoration(
            color: AppColors.colorText,
            borderRadius: BorderRadius.circular(25.r),
            boxShadow: const [
              BoxShadow(
                color: AppColors.colorDescriptionOnboarding,
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(4, 3),
              ),
            ]),
        child: Center(
          child: Row(
            children: [
              AppSizeBox.sizeWidth15,

            const ColumnPoint(title:"Reward Points" , number:  "0.0"),

              const VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                width: 20,
              ),
             AppSizeBox.sizeWidth15,

              const ColumnPoint(title:"Travel Trips" , number:  "0.0"),

              const VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                width: 20,
              ),
             AppSizeBox.sizeWidth15,
              const ColumnPoint(title:"Bucket List" , number:  "0.0"),

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../styles/app_colors.dart';
import '../styles/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = AppColors.colorButtonAndBackg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: Size(350.sp, 40.sp),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),

        ),
      ),

      child: Text(text, style: AppTextStyles.customButton),
    );
  }
}

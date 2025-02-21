import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_course/core/styles/app_size_box.dart';

import '../../../../../core/router/app_router.dart';
import '../../../../../core/styles/app_size.dart';
import '../../../../../core/styles/app_text_styles.dart';

void MessageAlert(BuildContext parentContext) {  // Pass parent context
  showDialog(
    context: parentContext,
    builder: (BuildContext dialogContext) {  // Use separate dialogContext
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding:  EdgeInsets.all(20.w),
          width: MediaQuery.of(parentContext).size.width * 0.8, // Use parentContext
          height: 300.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             AppSizeBox.size30,
               Icon(Icons.email, size: AppSize.titleOnboarding),
               Center(
                child: Text(
                  "Check your email",
                  style: AppTextStyles.signTitle,
                ),
              ),
              AppSizeBox.size15,
               Center(
                child: Text(
                  "We have sent password recovery instructions to your email",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.signDes,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(dialogContext);  // Close the dialog safely
                  Future.delayed(const Duration(seconds: 5), () {
                    GoRouter.of(parentContext).push(Routers.otp.name); // Use parent context
                  });
                },
                child: const Text("Close"),
              ),
            ],
          ),
        ),
      );
    },
  );
}

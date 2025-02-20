import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:travel_course/core/styles/app_size.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/router/app_router.dart';
import '../../../../../core/styles/app_colors.dart';
import '../../../../../core/styles/app_size_box.dart';
import '../../../../../core/styles/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final int otpLength = 4;

  void verifyOtp(String otp) {
    if (otp.length == otpLength) {

    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid OTP")),
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorText,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppIcons.backButton(context),
          AppSizeBox.size30,
          const Center(
              child: Text("OTP Verification", style: AppTextStyles.signTitle)),
          AppSizeBox.size20,
          const Center(
            child: Text(
              "Please check your email to see the verification code",
              style: AppTextStyles.signDes,
              textAlign: TextAlign.center,
            ),
          ),
          AppSizeBox.size30,
          const Padding(
            padding: AppPadding.spacePadding,
            child: Text("OTP Code", style: AppTextStyles.signTitle),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Pinput(
                length: otpLength,
                onCompleted: verifyOtp,
                defaultPinTheme: PinTheme(
                  width:  AppSize.pinWidth,
                  height: AppSize.pinHeight,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  textStyle: const TextStyle(fontSize: 22),
                  decoration: BoxDecoration(
                    color: AppColors.colorTextForm,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.colorTextForm),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: AppSize.pinWidth,
                  height: AppSize.pinHeight,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  textStyle: const TextStyle(fontSize: 22),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue),
                  ),
                ),
              ),
            ),
          ),
          AppSizeBox.size30,
          Padding(
            padding: AppPadding.spacePadding,
            child: CustomButton(text: "Verify", onPressed: () {
              GoRouter.of(context).push(Routers.profile.name);
            }),
          ),
        ],
      ),
    );
  }
}

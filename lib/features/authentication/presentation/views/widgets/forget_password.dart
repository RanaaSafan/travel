import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/styles/app_colors.dart';
import '../../../../../core/styles/app_size_box.dart';
import '../../../../../core/styles/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/text_field_custom.dart';
import 'message_alert.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import '../../../../core/common/router/app_router.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:random_string/random_string.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>(); // لإدارة الفورم
  //  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  //
  //  void _sendOtpEmail() async {
  //    try {
  //      String email = _emailController.text.trim();
  //      String otpCode = randomNumeric(6); // توليد كود عشوائي مكون من 6 أرقام
  //
  //      // حفظ الكود في Firestore
  //      await _firestore.collection("password_reset_otp").doc(email).set({
  //        "otp": otpCode,
  //        "created_at": FieldValue.serverTimestamp(),
  //      });
  //
  //      // إرسال الكود عبر Firebase Functions أو أي خدمة إرسال بريد إلكتروني (تحتاج لإعداد خدمة البريد الإلكتروني)
  //      print("OTP: $otpCode"); // هنا يجب إرسال الكود عبر البريد
  //
  //      Fluttertoast.showToast(msg: "تم إرسال الكود إلى بريدك الإلكتروني.");
  //    //  Navigator.pushNamed(context, "/otp_screen", arguments: email);
  //    } catch (e) {
  //      Fluttertoast.showToast(msg: "حدث خطأ: ${e.toString()}");
  //    }
  // }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    return emailRegex.hasMatch(email);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorText,
      body: Form(
        key: formKey,
        child: Padding(
          padding: AppPadding.spacePadding,
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppIcons.backButton(context),
              AppSizeBox.size30,
              const Center(
                  child: Text("Forget password", style: AppTextStyles.signTitle)),
              AppSizeBox.size5,
              const Center(
                  child: Text(
                    "Enter your email account to reset  your password",
                    style: AppTextStyles.signDes,
                  )),
              AppSizeBox.size35,
              const Text(
                "Email",
                style: AppTextStyles.email,
              ),
              AppSizeBox.size10,
              TextFieldCustom(title: "Email", controller: _emailController),

              AppSizeBox.size35,
              CustomButton(
                text: "Reset Password",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    final email = _emailController.text.trim();
                    if (_isValidEmail(email)) {
                      MessageAlert(context);
                    }
                  }
                },
              ),

            ],
          ),
        ),
      ),
    );
  }

}

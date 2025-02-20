import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/router/app_router.dart';
import '../../../../../core/styles/app_colors.dart';
import '../../../../../core/styles/app_size_box.dart';
import '../../../../../core/styles/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/text_field_custom.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>(); // لإدارة الفورم

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    return emailRegex.hasMatch(email);
  }
  bool _isValidPassword(String password) {
    final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>]).{6,}$');
    return passwordRegex.hasMatch(password);
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
              const Center(
                  child: Text("Sign in now", style: AppTextStyles.signTitle)),
              AppSizeBox.size5,
              const Center(
                  child: Text(
                    "Please sign in to continue our app",
                    style: AppTextStyles.signDes,
                  )),
              AppSizeBox.size25,
              const Text(
                "Email",
                style: AppTextStyles.email,
              ),
              AppSizeBox.size10,
              TextFieldCustom(title: "Email", controller: emailController),
              AppSizeBox.size30,
              const Text(
                "Password",
                style: AppTextStyles.password,
              ),
              AppSizeBox.size10,
              TextFieldCustom(
                  title: "Password", controller: passwordController),
              AppSizeBox.size15,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        GoRouter.of(context).push(Routers.forgetpassword.name);
                      },
                      child: const Text(
                        "Forget Password?",
                        style: AppTextStyles.forgetPassword,
                      )),
                ],
              ),
              AppSizeBox.size30,
              CustomButton(
                  text: "Sign in",
                  onPressed: () {

                    if (formKey.currentState!.validate()) {
                      final email = emailController.text.trim();
                      final password=passwordController.text.trim();
                      if (_isValidEmail(email) && _isValidPassword(password)) {

                      }


                    }
                  }),
              AppSizeBox.size30,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Don’t have an account?"),
                  InkWell(
                      onTap: () {
                        GoRouter.of(context).push(Routers.signupScreen.name);
                      },
                      child: const Text(
                        "Sign Up",
                        style: AppTextStyles.forgetPassword,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

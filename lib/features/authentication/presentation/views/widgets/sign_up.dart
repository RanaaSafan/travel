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

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
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
                  child: Text("Sign up now", style: AppTextStyles.signTitle)),
              AppSizeBox.size5,
              const Center(
                  child: Text(
                    "Please fill the details and create account",
                    style: AppTextStyles.signDes,
                  )),
              AppSizeBox.size25,
              const Text(
                "Username",
                style: AppTextStyles.email,
              ),
              AppSizeBox.size10,
              TextFieldCustom(title: "Username", controller: nameController),
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
                      onTap: () {},
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
                      final password= passwordController.text.trim();
                      if (_isValidEmail(email) && _isValidPassword(password)) {

                      }

                    }
                  }),
              AppSizeBox.size30,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 const Text("Already have an account"),
                  InkWell(
                      onTap: () {
                        GoRouter.of(context).push(Routers.signInScreen.name);
                      },
                      child: const Text(
                        "Sign In",
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

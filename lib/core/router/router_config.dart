import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_course/features/authentication/presentation/views/screens/otp_screen.dart';
import '../../features/authentication/presentation/views/screens/forget_password_screen.dart';
import '../../features/authentication/presentation/views/widgets/sign_in.dart';
import '../../features/authentication/presentation/views/widgets/sign_up.dart';
import '../../features/splash/presentation/views/screens/onboarding_screen.dart';
import '../../features/splash/presentation/views/screens/splash_screen.dart';
import 'app_router.dart';

final router = GoRouter(
    initialLocation: Routers.SplashScreen.path,
    routes: [
      GoRoute(
        path: Routers.SplashScreen.path,
        name: Routers.SplashScreen.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SplashScreen());
        },
      ),
      GoRoute(
        path: Routers.OnboardingScreen.path,
        name: Routers.OnboardingScreen.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: OnboardingScreen());
        },
      ),

      GoRoute(
        path: Routers.signInScreen.path,
        name: Routers.signInScreen.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SignIn());
        },
      ),
      GoRoute(
        path: Routers.signupScreen.path,
        name: Routers.signupScreen.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SignUp());
        },
      ),

      GoRoute(
        path: Routers.forgetpassword.path,
        name: Routers.forgetpassword.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: ForgetPasswordScreen());
        },
      ),
      GoRoute(
        path: Routers.otp.path,
        name: Routers.otp.name,
        pageBuilder: (context, state) {
          return const MaterialPage(child: OtpScreen());
        },
      ),

    ]);

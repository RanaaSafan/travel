class AppRouter {
  String name;
  String path;
  AppRouter({
    required this.name,
    required this.path,
  });
}

class Routers {

  static AppRouter OnboardingScreen =
  AppRouter(name: "/OnboardingScreen", path: "/OnboardingScreen");
  static AppRouter SplashScreen =
  AppRouter(name: "/SplashScreen", path: "/SplashScreen");
  static AppRouter signInScreen = AppRouter(name: "/signin", path: "/signin");
  static AppRouter signupScreen = AppRouter(name: "/signup", path: "/signup");
  static AppRouter forgetpassword =
  AppRouter(name: "/forgetpassword", path: "/forgetpassword");
  static AppRouter otp =
  AppRouter(name: "/otp", path: "/otp");

  static AppRouter profile =
  AppRouter(name: "/profile", path: "/profile");

  static AppRouter editProfile =
  AppRouter(name: "/editProfile", path: "/editProfile");


}
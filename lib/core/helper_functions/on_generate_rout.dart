import 'package:ecommerce_app/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:ecommerce_app/features/splash/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String splashScreen = 'splashScreen';
  static const String onboardingScreen = 'onboardingScreen';
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case onboardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    }
  }
}

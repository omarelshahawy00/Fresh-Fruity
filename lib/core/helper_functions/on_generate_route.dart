import 'package:ecommerce_app/core/services/get_it_service.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:ecommerce_app/features/auth/ui/cubits/login_cubit/login_cubit.dart';
import 'package:ecommerce_app/features/auth/ui/screens/login_screen/login_screen.dart';
import 'package:ecommerce_app/features/auth/ui/screens/sign_up_screen/sign_up_screen.dart';
import 'package:ecommerce_app/features/best_selling/ui/screens/best_selling_screen.dart';
import 'package:ecommerce_app/features/cart/ui/screens/cart_screen.dart';
import 'package:ecommerce_app/features/home/ui/screens/main_screen.dart';
import 'package:ecommerce_app/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:ecommerce_app/features/products/ui/screens/products_screen.dart';
import 'package:ecommerce_app/features/splash/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static const String splashScreen = 'splashScreen';
  static const String onboardingScreen = 'onboardingScreen';
  static const String loginScreen = 'loginScreen';
  static const String SignupScreen = 'SignupScreen';
  static const String homeScreen = 'homeScreen';
  static const String productScreen = 'productScreen';
  static const String bestSellingScreen = 'bestSellingScreen';
  static const String cartScreen = 'cartScreen';
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case onboardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(getIt<AuthRepo>()),
            child: const LoginScreen(),
          ),
        );
      case SignupScreen:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => const MainScreen(),
        );
      case productScreen:
        return MaterialPageRoute(
          builder: (context) => const ProductsScreen(),
        );
      case bestSellingScreen:
        return MaterialPageRoute(
          builder: (context) => const BestSellingScreen(),
        );
      case cartScreen:
        return MaterialPageRoute(
          builder: (context) => const CartScreen(),
        );
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    }
  }
}

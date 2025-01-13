import 'package:ecommerce_app/core/services/shared_preferences_singletone.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helper_functions/on_generate_route.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    navigationTiming();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.splashTopImg),
          ],
        ),
        Center(
          child: SvgPicture.asset(Assets.splashFreshFruity, height: 250),
        ),
        SvgPicture.asset(
          Assets.splashBottomImg,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void navigationTiming() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        bool seen = Prefs.getBool(isOnBoardingViewSeen);
        if (seen == false) {
          Navigator.pushReplacementNamed(context, AppRouter.onboardingScreen);
        } else {
          Navigator.pushReplacementNamed(context, AppRouter.loginScreen);
        }
      },
    );
  }
}

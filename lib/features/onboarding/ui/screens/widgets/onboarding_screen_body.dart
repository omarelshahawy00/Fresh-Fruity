import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_app/core/helper_functions/on_generate_route.dart';
import 'package:ecommerce_app/core/services/shared_preferences_singletone.dart';
import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/widgets/app_text_button.dart';
import 'package:ecommerce_app/features/onboarding/ui/screens/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class OnboardingScreenBody extends StatefulWidget {
  const OnboardingScreenBody({super.key});

  @override
  State<OnboardingScreenBody> createState() => _OnboardingScreenBodyState();
}

late PageController pageController;
int currentPage = 0;

class _OnboardingScreenBodyState extends State<OnboardingScreenBody> {
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnboardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          decorator: DotsDecorator(
            color: ColorsManager.mainGreen
                .withValues(alpha: currentPage == 0 ? .5 : 1),
            activeColor: ColorsManager.mainGreen,
          ),
          dotsCount: 2,
          position: 0,
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Visibility(
            maintainAnimation: true,
            maintainSize: true,
            maintainState: true,
            visible: currentPage == 0 ? false : true,
            child: AppTextButton(
              onPressed: () {
                Prefs.setBool(isOnBoardingViewSeen, true);
                Navigator.pushReplacementNamed(context, AppRouter.loginScreen);
              },
              buttonText: 'ابدا الان',
              backgroundColor: ColorsManager.mainGreen,
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

import 'package:ecommerce_app/core/utils/const_images.dart';
import 'package:ecommerce_app/features/onboarding/ui/screens/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnboardingPageView(),
        ),
      ],
    );
  }
}

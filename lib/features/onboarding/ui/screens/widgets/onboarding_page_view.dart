import 'package:ecommerce_app/core/helper_functions/on_generate_route.dart';
import 'package:ecommerce_app/core/services/shared_preferences_singletone.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/core/utils/const_images.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/features/onboarding/ui/screens/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          skipTitle: GestureDetector(
            onTap: () {
              Prefs.setBool(isOnBoardingViewSeen, true);
              Navigator.pushReplacementNamed(context, AppRouter.loginScreen);
            },
            child: Text(
              'تخط',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ),
          backgroundImage: ConstImages.onboardingBackground1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبًا بك في',
                style: TextStyles.size23Weight700,
              ),
              Row(
                children: [
                  Text(
                    ' Fruity',
                    style: TextStyles.size23Weight700
                        .copyWith(color: Color(0xfff4a91f)),
                  ),
                  Text('&Fresh', style: TextStyles.size23Weight700),
                ],
              ),
            ],
          ),
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          centerImage: ConstImages.onboardingCenterIcon1,
        ),
        PageViewItem(
          backgroundImage: ConstImages.onboardingBackground2,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ابحث وتسوق',
                style: TextStyles.size23Weight700,
              ),
            ],
          ),
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          centerImage: ConstImages.onboardingCenterIcon2,
        ),
      ],
    );
  }
}

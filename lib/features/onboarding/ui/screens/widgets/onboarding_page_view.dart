import 'package:ecommerce_app/core/utils/const_images.dart';
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
            onTap: () => pageController.jumpToPage(1),
            child: Text('تخط'),
          ),
          backgroundImage: ConstImages.onboardingBackground1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبًا بك في',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
              ),
              Text(
                'FreshFruity',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
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
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
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

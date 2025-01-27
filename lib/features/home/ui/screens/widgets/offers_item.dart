import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/core/utils/const_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;

import '../../../../../core/widgets/app_text_button.dart';

class OffersItem extends StatelessWidget {
  const OffersItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.of(context).size.width - 32;
    return Container(
      width: itemWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              top: 0,
              right: itemWidth * .4,
              child: SvgPicture.asset(
                ConstImages.onboardingCenterIcon2,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: itemWidth * .5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: svg.Svg(
                    ConstImages.ellipsOffers,
                  ),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'عروض العيد',
                      style: TextStyles.size13Weight600
                          .copyWith(color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      'خصم 25%',
                      style: TextStyles.size19Weight700
                          .copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    AppTextButton(
                      onPressed: () {},
                      buttonText: 'تسوق الان',
                      textStyle: TextStyles.size13Weight700.copyWith(
                        color: ColorsManager.mainGreen,
                      ),
                      buttonWidth: 116,
                      buttonHeight: 32,
                      borderRadius: BorderRadius.circular(4),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 29,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

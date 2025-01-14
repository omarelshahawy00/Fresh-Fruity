import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/core/utils/const_images.dart';
import 'package:ecommerce_app/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginMethod extends StatelessWidget {
  const LoginMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        AppTextButton(
          leadingIcon: SvgPicture.asset(ConstImages.googleLogin),
          onPressed: () {
            // TODO
          },
          buttonText: 'تسجيل بواسطة جوجل',
          textStyle: TextStyles.size16Weight600.copyWith(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        AppTextButton(
          leadingIcon: SvgPicture.asset(ConstImages.appleLogin),
          onPressed: () {
            // TODO
          },
          buttonText: 'تسجيل بواسطة أبل',
          textStyle: TextStyles.size16Weight600.copyWith(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        AppTextButton(
          leadingIcon: SvgPicture.asset(ConstImages.facebookLogin),
          onPressed: () {
            // TODO
          },
          buttonText: 'تسجيل بواسطة فيسبوك',
          textStyle: TextStyles.size16Weight600.copyWith(color: Colors.black),
          backgroundColor: Colors.white,
        ),
      ],
    );
  }
}

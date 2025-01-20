import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/core/utils/const_images.dart';
import 'package:ecommerce_app/core/widgets/app_text_button.dart';
import 'package:ecommerce_app/features/auth/ui/cubits/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            BlocProvider.of<LoginCubit>(context).loginWithGoogle();
          },
          buttonText: 'تسجيل بواسطة جوجل',
          textStyle: TextStyles.size16Weight600,
          backgroundColor: Colors.white,
        ),
        AppTextButton(
          leadingIcon: SvgPicture.asset(ConstImages.appleLogin),
          onPressed: () {
            // TODO
          },
          buttonText: 'تسجيل بواسطة أبل',
          textStyle: TextStyles.size16Weight600,
          backgroundColor: Colors.white,
        ),
        AppTextButton(
          leadingIcon: SvgPicture.asset(ConstImages.facebookLogin),
          onPressed: () {
            BlocProvider.of<LoginCubit>(context).loginWithFacebook();
          },
          buttonText: 'تسجيل بواسطة فيسبوك',
          textStyle: TextStyles.size16Weight600,
          backgroundColor: Colors.white,
        ),
      ],
    );
  }
}

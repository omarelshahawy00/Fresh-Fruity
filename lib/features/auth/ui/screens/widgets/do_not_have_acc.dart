import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoNotHaveAcc extends StatelessWidget {
  const DoNotHaveAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لا تمتلك حساب؟ ',
          style: TextStyles.size16Weight600.copyWith(color: ColorsManager.gray),
        ),
        Text(
          'قم بانشاء حساب',
          style: TextStyles.size16Weight600
              .copyWith(color: ColorsManager.mainGreen),
        ),
        SizedBox(height: 17),
      ],
    );
  }
}

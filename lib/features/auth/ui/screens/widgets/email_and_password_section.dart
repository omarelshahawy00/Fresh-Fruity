import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/app_text_button.dart';

class EmailAndPasswordSection extends StatelessWidget {
  const EmailAndPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing: 16,
      children: [
        AppTextFormField(
          fillColor: Color(0xfff9fafa),
          hintText: 'البريد الالكتروني',
          hintTextStyle: TextStyles.size13Weight700,
          borderRadius: BorderRadius.circular(4),
          backgroundColor: Color(0xfff9fafa),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xffe6e9ea),
          ),
        ),
        AppTextFormField(
          fillColor: Color(0xfff9fafa),
          hintText: 'كلمة المرور',
          isObscureText: true,
          suffixIcon: Icon(Icons.visibility),
          hintTextStyle: TextStyles.size13Weight700,
          borderRadius: BorderRadius.circular(4),
          backgroundColor: Color(0xfff9fafa),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xffe6e9ea),
          ),
        ),
        Text(
          'نسيت كلمة المرور؟',
          style: TextStyles.size13Weight600
              .copyWith(color: ColorsManager.mainLighterGreen),
        ),
        SizedBox(height: 7),
        AppTextButton(
          onPressed: () {
            // TODO
          },
          buttonText: 'تسجيل الدخول',
          buttonWidth: double.maxFinite,
          buttonHeight: 52,
          borderRadius: BorderRadius.circular(16),
          backgroundColor: ColorsManager.mainGreen,
          textStyle: TextStyles.size16Weight700,
        ),
      ],
    );
  }
}

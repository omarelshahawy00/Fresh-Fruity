import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/core/widgets/app_text_button.dart';
import 'package:ecommerce_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreenBody extends StatefulWidget {
  const SignUpScreenBody({super.key});

  @override
  State<SignUpScreenBody> createState() => _SignUpScreenBodyState();
}

class _SignUpScreenBodyState extends State<SignUpScreenBody> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 16,
          children: [
            SizedBox(height: 5),
            AppTextFormField(
              fillColor: Color(0xfff9fafa),
              hintText: 'الاسم كامل',
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
              suffixIcon: Icon(
                Icons.visibility,
                size: 24,
                color: Color(0xffc9cecf),
              ),
              hintTextStyle: TextStyles.size13Weight700,
              borderRadius: BorderRadius.circular(4),
              backgroundColor: Color(0xfff9fafa),
              borderSide: BorderSide(
                width: 1,
                color: Color(0xffe6e9ea),
              ),
            ),
            Transform.translate(
              offset: Offset(14, 0),
              child: Row(
                children: [
                  Checkbox(
                    side: BorderSide(
                      color: ColorsManager.gray,
                    ),
                    activeColor: ColorsManager.mainGreen,
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                              style: TextStyles.size13Weight600.copyWith(
                                color: ColorsManager.LightText,
                              ),
                            ),
                            TextSpan(
                              text: 'الشروط والأحكام الخاصة بنا',
                              style: TextStyles.size13Weight600.copyWith(
                                color: ColorsManager.mainLighterGreen,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 1),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'تمتلك حساب بالفعل؟',
                  style: TextStyles.size16Weight600
                      .copyWith(color: ColorsManager.LightText),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyles.size16Weight600
                        .copyWith(color: ColorsManager.mainGreen),
                  ),
                ),
                SizedBox(height: 17),
              ],
            )
          ],
        ),
      ),
    );
  }
}

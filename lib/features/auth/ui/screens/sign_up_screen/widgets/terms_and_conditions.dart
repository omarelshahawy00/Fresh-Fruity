import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/theming/colors.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.isChecked});

  final ValueChanged<bool> isChecked;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
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
                widget.isChecked(value);
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
    );
  }
}

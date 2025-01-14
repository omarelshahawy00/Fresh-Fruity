import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: ColorsManager.lightGray,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Text('او', style: TextStyles.size16Weight600),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: ColorsManager.lightGray,
          ),
        ),
      ],
    );
  }
}

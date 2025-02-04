import 'package:ecommerce_app/core/helper_functions/on_generate_route.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'الاكثر مبيعاً',
          style: TextStyles.size16Weight700.copyWith(color: Colors.black),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRouter.bestSellingScreen);
          },
          child: Text(
            'المزيد',
            style: TextStyles.size13Weight400.copyWith(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

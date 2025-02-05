import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';

class CounterActionButton extends StatelessWidget {
  const CounterActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: ColorsManager.mainGreen,
          radius: 12,
          child: FittedBox(
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            '1',
            style: TextStyles.size16Weight700.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: ColorsManager.lighterGray,
          radius: 12,
          child: FittedBox(
            child: Icon(
              Icons.remove,
              color: Colors.black,
              size: 18,
            ),
          ),
        ),
      ],
    );
  }
}

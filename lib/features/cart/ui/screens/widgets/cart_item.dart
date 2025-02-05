import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/cart/ui/screens/widgets/counter_action_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/const_images.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio: (screenWidth - 17.5) / 100,
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              color: ColorsManager.lighterGray,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 26, horizontal: 10),
                child: AspectRatio(
                  aspectRatio: 53 / 40,
                  child: Image.asset(
                    ConstImages.watermelon11,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'بطيخ',
                    style: TextStyles.size16Weight700.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '1.5 كيلو',
                    style: TextStyles.size13Weight400.copyWith(
                      color: const Color.fromARGB(255, 255, 192, 2),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: CounterActionButton(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.highlight_remove_rounded),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '30 جنيه',
                    style: TextStyles.size16Weight700.copyWith(
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/cart/ui/screens/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 24),
          child: AspectRatio(
            aspectRatio: screenWidth / 41,
            child: Container(
              width: double.infinity,
              color: ColorsManager.mintgreen,
              child: Center(
                child: Text(
                  'لديك 3 منتجات في سله التسوق',
                  style: TextStyles.size13Weight400,
                ),
              ),
            ),
          ),
        ),
        Divider(
          color: ColorsManager.lighterGray,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.5),
          child: CartItem(),
        ),
        Divider(
          color: ColorsManager.lighterGray,
          thickness: 1,
        ),
      ],
    );
  }
}

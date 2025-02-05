import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/widgets/app_text_button.dart';
import 'package:ecommerce_app/features/cart/ui/screens/widgets/cart_items_list.dart';
import 'package:ecommerce_app/features/cart/ui/screens/widgets/cart_num_of_product.dart';
import 'package:flutter/material.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            // First section: Cart information
            const SliverToBoxAdapter(
              child: Column(
                children: [
                  CartNumOfProduct(),
                  Divider(
                    color: ColorsManager.lighterGray,
                    thickness: 1,
                  ),
                ],
              ),
            ),
            // Second section: List of cart items
            CartItemsList(),
          ],
        ),

        // Checkout button at the bottom
        Positioned(
          left: 0,
          right: 0,
          bottom: 20,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: AppTextButton(
              onPressed: () {},
              buttonText: 'الدفع  120 جنيه',
              backgroundColor: ColorsManager.mainGreen,
            ),
          ),
        ),
      ],
    );
  }
}

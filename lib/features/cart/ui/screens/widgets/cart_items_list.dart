import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/features/cart/ui/screens/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 90, right: 17.5, left: 17.5),
      sliver: SliverList.separated(
        itemCount: 10,
        itemBuilder: (context, index) => const CartItem(),
        separatorBuilder: (context, index) => const Divider(
          color: ColorsManager.lighterGray,
          thickness: 1,
        ),
      ),
    );
  }
}

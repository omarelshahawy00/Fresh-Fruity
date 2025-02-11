import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:ecommerce_app/features/cart/ui/screens/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key, required this.cartItemsEntity});
  final List<CartItemEntity> cartItemsEntity;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      sliver: SliverList.separated(
        itemCount: cartItemsEntity.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.5),
          child: CartItem(
            cartItemEntity: cartItemsEntity[index],
          ),
        ),
        separatorBuilder: (context, index) => const Divider(
          color: ColorsManager.lighterGray,
          thickness: 1,
        ),
      ),
    );
  }
}

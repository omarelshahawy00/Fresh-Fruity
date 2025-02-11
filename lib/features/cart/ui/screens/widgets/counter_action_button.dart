import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:ecommerce_app/features/cart/ui/cubits/cart_cubit/cart_cubit.dart';
import 'package:ecommerce_app/features/cart/ui/cubits/cart_item_update/cart_item_update_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/colors.dart';

class CounterActionButton extends StatelessWidget {
  const CounterActionButton({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            cartItemEntity.increaseCount();
            context.read<CartItemUpdateCubit>().update(cartItemEntity);
          },
          child: CircleAvatar(
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            '${cartItemEntity.count}',
            style: TextStyles.size16Weight700.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            cartItemEntity.decreaseCount();
            context.read<CartItemUpdateCubit>().update(cartItemEntity);
          },
          child: CircleAvatar(
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
        ),
      ],
    );
  }
}

import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:ecommerce_app/features/cart/ui/cubits/cart_cubit/cart_cubit.dart';
import 'package:ecommerce_app/features/cart/ui/cubits/cart_item_update/cart_item_update_cubit.dart';
import 'package:ecommerce_app/features/cart/ui/screens/widgets/counter_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/const_images.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocBuilder<CartItemUpdateCubit, CartItemUpdateState>(
      builder: (context, state) {
        return AspectRatio(
          aspectRatio: (screenWidth - 17.5) / 100,
          child: IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  color: ColorsManager.lighterGray,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 26, horizontal: 10),
                    child: AspectRatio(
                      aspectRatio: 53 / 40,
                      child: Image.network(
                        cartItemEntity.productEntity.imgUrl!,
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
                        '${cartItemEntity.productEntity.name}',
                        style: TextStyles.size16Weight700.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '${cartItemEntity.calculateTotalWeight()} كيلو',
                        style: TextStyles.size13Weight400.copyWith(
                          color: const Color.fromARGB(255, 255, 192, 2),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        child: CounterActionButton(
                          cartItemEntity: cartItemEntity,
                        ),
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
                          GestureDetector(
                              onTap: () => context
                                  .read<CartCubit>()
                                  .removeItemFromCart(cartItemEntity),
                              child: Icon(Icons.highlight_remove_rounded)),
                        ],
                      ),
                      Spacer(),
                      Text(
                        '${cartItemEntity.calculateTotalPrice()} جنيه',
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
      },
    );
  }
}

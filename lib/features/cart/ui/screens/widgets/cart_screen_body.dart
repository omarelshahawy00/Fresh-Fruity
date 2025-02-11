import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/widgets/app_text_button.dart';
import 'package:ecommerce_app/features/cart/ui/cubits/cart_cubit/cart_cubit.dart';
import 'package:ecommerce_app/features/cart/ui/screens/widgets/cart_items_list.dart';
import 'package:ecommerce_app/features/cart/ui/screens/widgets/cart_num_of_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            // First section: Cart information
            SliverToBoxAdapter(
              child: Column(
                children: [
                  CartNumOfProduct(),
                  context.read<CartCubit>().cartEntity.cartItemsList.isEmpty
                      ? const SizedBox()
                      : Divider(
                          color: ColorsManager.lighterGray,
                          thickness: 1,
                        ),
                ],
              ),
            ),
            // Second section: List of cart items
            CartItemsList(
              cartItemsEntity:
                  context.read<CartCubit>().cartEntity.cartItemsList,
            ),
            SliverToBoxAdapter(
              child: context.read<CartCubit>().cartEntity.cartItemsList.isEmpty
                  ? const SizedBox()
                  : Divider(
                      color: ColorsManager.lighterGray,
                      thickness: 1,
                    ),
            )
          ],
        ),

        // Checkout button at the bottom
        Positioned(
          left: 0,
          right: 0,
          top: screenHeight - 320,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: AppTextButton(
              onPressed: () {},
              buttonText:
                  'الدفع  ${context.watch<CartCubit>().cartEntity.calculateTotalPrice()} جنيه',
              backgroundColor: ColorsManager.mainGreen,
            ),
          ),
        ),
      ],
    );
  }
}

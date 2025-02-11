import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/features/cart/ui/cubits/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/styles.dart';

class CartNumOfProduct extends StatelessWidget {
  const CartNumOfProduct({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 24),
      child: AspectRatio(
        aspectRatio: screenWidth / 41,
        child: Container(
          width: double.infinity,
          color: ColorsManager.mintgreen,
          child: Center(
            child: Text(
              'لديك ${context.watch<CartCubit>().cartEntity.cartItemsList.length} من المنتجات في سله التسوق',
              style: TextStyles.size13Weight400,
            ),
          ),
        ),
      ),
    );
  }
}

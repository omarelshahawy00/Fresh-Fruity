import 'package:ecommerce_app/core/helper_functions/build_error_bar.dart';
import 'package:ecommerce_app/features/cart/ui/cubits/cart_cubit/cart_cubit.dart';
import 'package:ecommerce_app/features/products/ui/screens/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cart/ui/screens/cart_screen.dart';
import 'home_screen.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key, required this.currentScreenIndex});
  final int currentScreenIndex;
  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartItemAdded) {
          buildSnackBar(context, 'تم اضافة المنتج بنجاح');
        }
      },
      child: IndexedStack(
        index: currentScreenIndex,
        children: [
          HomeScreen(),
          ProductsScreen(),
          CartScreen(),
        ],
      ),
    );
  }
}

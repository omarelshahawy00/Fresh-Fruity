import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/features/cart/ui/screens/widgets/cart_screen_body.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Scaffold(
        appBar: buildAppbar(
          context,
          title: 'السلة',
          leading: SizedBox(),
        ),
        body: CartScreenBody(),
      ),
    );
  }
}

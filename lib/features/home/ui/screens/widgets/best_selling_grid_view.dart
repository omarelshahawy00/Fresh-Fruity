import 'package:ecommerce_app/features/home/ui/screens/widgets/fruit_card_item.dart';
import 'package:flutter/material.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 8,
        childAspectRatio: 163 / 214,
      ),
      itemBuilder: (context, index) {
        return const FruitCardItem();
      },
    );
  }
}

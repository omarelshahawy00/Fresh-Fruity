import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/fruit_card_item.dart';
import 'package:flutter/material.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key, required this.products});
  final List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 8,
        childAspectRatio: 163 / 225,
      ),
      itemBuilder: (context, index) {
        return FruitCardItem(
          product: products[index],
        );
      },
    );
  }
}

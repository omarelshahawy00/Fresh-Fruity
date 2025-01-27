import 'package:ecommerce_app/features/home/ui/screens/widgets/offers_item.dart';
import 'package:flutter/material.dart';

class OffersListview extends StatelessWidget {
  const OffersListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: OffersItem(),
          ),
        ),
      ),
    );
  }
}

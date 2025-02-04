import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/best_selling_grid_view_bloc_builder.dart';
import 'package:flutter/material.dart';

class BestSellingScreenBody extends StatelessWidget {
  const BestSellingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child:
                      Text('الأكثر مبيعاً', style: TextStyles.size16Weight700),
                ),
              ],
            ),
          ),
          // SliverPadding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          //   sliver: BestSellingGridViewBlocBuilder(),
          // ),
        ],
      ),
    );
  }
}

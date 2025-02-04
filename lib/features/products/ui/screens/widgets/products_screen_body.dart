import 'package:ecommerce_app/core/helper_functions/on_generate_route.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/core/utils/const_images.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/best_selling_header.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/home_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../home/ui/screens/widgets/best_selling_grid_view_bloc_builder.dart';

class ProductsScreenBody extends StatelessWidget {
  const ProductsScreenBody({super.key, required this.productsLength});
  final int productsLength;
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: HomeSearchField(),
                ),
                SizedBox(height: 12),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        'نتائج ($productsLength)',
                        style: TextStyles.size16Weight700
                            .copyWith(color: Colors.black),
                      ),
                      const Spacer(),
                      Container(
                        child: SvgPicture.asset(ConstImages.filterIcon2),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            sliver: BestSellingGridViewBlocBuilder(),
          ),
        ],
      ),
    );
  }
}

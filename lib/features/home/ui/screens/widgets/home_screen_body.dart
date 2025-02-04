import 'package:ecommerce_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/best_selling_grid_view_bloc_builder.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/best_selling_header.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/custom_home_appbar.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/best_selling_grid_view.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/home_search_field.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/offers_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  void initState() {
    BlocProvider.of<ProductsCubit>(context).getBestSellingProducts();
    super.initState();
  }

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
                CustomHomeAppbar(),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: HomeSearchField(),
                ),
                SizedBox(height: 12),
                OffersListview(),
                SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: BestSellingHeader(),
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

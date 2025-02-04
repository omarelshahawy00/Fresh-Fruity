import 'package:ecommerce_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/best_selling_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellingGridViewBlocBuilder extends StatelessWidget {
  const BestSellingGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsLoaded) {
          return BestSellingGridView(
            products: state.products,
          );
        } else if (state is ProductsError) {
          return SliverToBoxAdapter(child: Text(state.message));
        } else {
          return SliverToBoxAdapter(
              child: const Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}

import 'package:ecommerce_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:ecommerce_app/core/repos/product_repo.dart';
import 'package:ecommerce_app/core/services/get_it_service.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(getIt.get<ProductRepo>()),
      child: HomeScreenBody(),
    );
  }
}

import 'package:ecommerce_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:ecommerce_app/core/repos/product_repo.dart';
import 'package:ecommerce_app/core/services/get_it_service.dart';
import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/const_images.dart';
import 'widgets/products_screen_body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppbar(
          context,
          title: 'المنتجات',
          leading: SizedBox(),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Color(0xffeef8ed),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  ConstImages.notificationIcon,
                  height: 20,
                ),
              ),
            ),
          ],
        ),
        body: BlocProvider(
          create: (context) =>
              ProductsCubit(getIt.get<ProductRepo>())..getProducts(),
          child: ProductsScreenBody(
            productsLength:
                BlocProvider.of<ProductsCubit>(context).productsLength,
          ),
        ),
      ),
    );
  }
}

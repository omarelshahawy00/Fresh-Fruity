import 'package:ecommerce_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:ecommerce_app/core/repos/product_repo.dart';
import 'package:ecommerce_app/core/services/get_it_service.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/home_screen.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/custom_bottom_navbar.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentScreenIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavbar(
          selectedIndex: currentScreenIndex,
          onItemTapped: onItemTapped,
        ),
        body: BlocProvider(
          create: (context) => ProductsCubit(getIt.get<ProductRepo>()),
          child: getCurrentScreen(),
        ),
      ),
    );
  }

  Widget getCurrentScreen() {
    return [
      HomeScreen(),
      ProductsScreen(),
      HomeScreen(),
      HomeScreen(),
    ][currentScreenIndex];
  }
}

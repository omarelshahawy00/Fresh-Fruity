import 'package:ecommerce_app/features/cart/ui/cubits/cart_cubit/cart_cubit.dart';
import 'package:ecommerce_app/features/cart/ui/screens/cart_screen.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/home_screen.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/custom_bottom_navbar.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/main_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../products/ui/screens/products_screen.dart';

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
      child: BlocProvider(
        create: (context) => CartCubit(),
        child: Scaffold(
          bottomNavigationBar: CustomBottomNavbar(
            selectedIndex: currentScreenIndex,
            onItemTapped: onItemTapped,
          ),
          body: MainViewBody(
            currentScreenIndex: currentScreenIndex,
          ),
        ),
      ),
    );
  }
}

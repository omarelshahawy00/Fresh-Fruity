import 'package:ecommerce_app/features/home/ui/screens/widgets/home_screen.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';

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
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavbar(
          selectedIndex: currentScreenIndex,
          onItemTapped: onItemTapped,
        ),
        body: IndexedStack(
          index: currentScreenIndex,
          children: [
            HomeScreen(),
            ProductsScreen(),
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/features/home/domain/entites/bottom_navbar_entity.dart';
import 'package:flutter/material.dart';

import 'nav_bar_item.dart';

class CustomBottomNavbar extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;
  const CustomBottomNavbar(
      {super.key, required this.onItemTapped, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 60,
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(0, -2),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Row(
          children: bottomNavbarEntity.asMap().entries.map(
            (e) {
              var index = e.key;
              var item = e.value;
              return Expanded(
                flex: index == selectedIndex ? 3 : 2,
                child: GestureDetector(
                  onTap: () {
                    onItemTapped(index);
                  },
                  child: NavBarItem(
                    isSelected: selectedIndex == index,
                    bottomNavbarEntity: item,
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

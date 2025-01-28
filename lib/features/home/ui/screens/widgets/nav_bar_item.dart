import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/features/home/domain/entites/bottom_navbar_entity.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/bottom_navbar_active_item.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/bottom_navbar_inactive_item.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem(
      {super.key, required this.isSelected, required this.bottomNavbarEntity});
  final bool isSelected;
  final BottomNavbarEntity bottomNavbarEntity;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? BottomNavbarActiveItem(
            key: ValueKey('active_${bottomNavbarEntity.title}'),
            image: bottomNavbarEntity.activeImage,
            text: bottomNavbarEntity.title,
          )
        : BottomNavbarInactiveItem(
            key: ValueKey('inactive_${bottomNavbarEntity.title}'),
            image: bottomNavbarEntity.inactiveImage,
          );
  }
}

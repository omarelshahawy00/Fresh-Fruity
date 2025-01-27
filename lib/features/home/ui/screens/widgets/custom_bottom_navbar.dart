import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/core/utils/const_images.dart';
import 'package:ecommerce_app/features/home/domain/entites/bottom_navbar_entity.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/bottom_navbar_active_item.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/bottom_navbar_inactive_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  int selectedIndex = 0;

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
                  onTap: () => setState(() => selectedIndex = index),
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

class NavBarItem extends StatelessWidget {
  const NavBarItem(
      {super.key, required this.isSelected, required this.bottomNavbarEntity});
  final bool isSelected;
  final BottomNavbarEntity bottomNavbarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? BottomNavbarActiveItem(
            image: bottomNavbarEntity.activeImage,
            text: bottomNavbarEntity.title,
          )
        : BottomNavbarInactiveItem(
            image: bottomNavbarEntity.inactiveImage,
          );
  }
}

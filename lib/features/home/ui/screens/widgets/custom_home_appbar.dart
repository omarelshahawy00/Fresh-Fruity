import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/core/utils/const_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(ConstImages.profilePic),
      title: Text(
        'مرحبا بك...!',
        style: TextStyles.size16Weight600.copyWith(color: Colors.grey),
      ),
      subtitle: Text(
        'عمر الشهاوي',
        style: TextStyles.size16Weight700.copyWith(color: Colors.black),
      ),
      trailing: Container(
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
    );
  }
}

import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavbarActiveItem extends StatelessWidget {
  const BottomNavbarActiveItem(
      {super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: ColorsManager.lightMintGreen,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: ColorsManager.mainGreen,
              child: Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.mainGreen,
                  ),
                  child: SvgPicture.asset(image)),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              text,
              style: TextStyles.size11Weight600,
            ),
          ],
        ),
      ),
    );
  }
}

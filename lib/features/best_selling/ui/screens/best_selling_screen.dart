import 'package:ecommerce_app/core/utils/const_images.dart';
import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/features/best_selling/ui/screens/widgets/best_selling_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BestSellingScreen extends StatelessWidget {
  const BestSellingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(
        context,
        title: 'الأكثر مبيعا',
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
      body: const BestSellingScreenBody(),
    );
  }
}

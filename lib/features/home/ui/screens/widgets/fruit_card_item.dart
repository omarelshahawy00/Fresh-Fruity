import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/core/utils/const_images.dart';
import 'package:flutter/material.dart';

class FruitCardItem extends StatelessWidget {
  const FruitCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.lightMintGreen,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        children: [
          Positioned(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  ConstImages.watermelon11,
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    'بطيخ',
                    style: TextStyles.size13Weight600.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      text: '20جنيه /',
                      style: TextStyles.size13Weight700.copyWith(
                        color: ColorsManager.orange,
                      ),
                      children: [
                        TextSpan(
                          text: 'كيلو',
                          style: TextStyles.size13Weight700.copyWith(
                            color: ColorsManager.orange.withValues(alpha: .5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: CircleAvatar(
                    radius: 18,
                    backgroundColor: ColorsManager.mainGreen,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

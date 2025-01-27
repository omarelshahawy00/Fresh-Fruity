import 'package:ecommerce_app/core/utils/const_images.dart';

class BottomNavbarEntity {
  final String title;
  final String activeImage, inactiveImage;

  BottomNavbarEntity({
    required this.title,
    required this.activeImage,
    required this.inactiveImage,
  });
}

List<BottomNavbarEntity> bottomNavbarEntity = [
  BottomNavbarEntity(
    title: 'الرئيسية',
    activeImage: ConstImages.home_active,
    inactiveImage: ConstImages.home_inactive,
  ),
  BottomNavbarEntity(
    title: 'المنتجات',
    activeImage: ConstImages.product_active,
    inactiveImage: ConstImages.product_inactive,
  ),
  BottomNavbarEntity(
    title: 'سلة التسوق',
    activeImage: ConstImages.cart_active,
    inactiveImage: ConstImages.cart_inactive,
  ),
  BottomNavbarEntity(
    title: 'حسابي',
    activeImage: ConstImages.profile_active,
    inactiveImage: ConstImages.profile_inactive,
  )
];

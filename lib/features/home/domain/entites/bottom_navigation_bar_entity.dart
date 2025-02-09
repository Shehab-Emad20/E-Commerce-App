import 'package:flutter_application_1/core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;
  final String name;

  BottomNavigationBarEntity(
      {required this.activeImage,
      required this.inActiveImage,
      required this.name});
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      BottomNavigationBarEntity(
          activeImage: Assets.imagesBoldHome,
          inActiveImage: Assets.imagesOutlineHome1,
          name: 'الرئيسية'),
      BottomNavigationBarEntity(
          activeImage: Assets.imagesBoldProducts,
          inActiveImage: Assets.imagesOutlineProducts1,
          name: 'المنتجات'),
      BottomNavigationBarEntity(
          activeImage: Assets.imagesBoldShoppingCart,
          inActiveImage: Assets.imagesOutlineShoppingCart1,
          name: 'سلة التسوق '),
      BottomNavigationBarEntity(
          activeImage: Assets.imagesBoldUser,
          inActiveImage: Assets.imagesOutlineUser1,
          name: 'حسابي'),
    ];

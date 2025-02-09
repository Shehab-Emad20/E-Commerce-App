import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_images.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 357,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: InActiveItem(image: Assets.imagesOutlineHome1),
    );
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image);
  }
}

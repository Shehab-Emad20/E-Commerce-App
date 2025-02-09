import 'package:flutter/material.dart';

import 'package:flutter_application_1/features/home/domain/entites/bottom_navigation_bar_entity.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/naivgation_bar_item.dart';
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: bottomNavigationBarItems.map((e) {
            return NaivgationBarItem(
                bottomNavigationBarEntity: e, isSelected: false);
          }).toList(),
        ));
  }
}






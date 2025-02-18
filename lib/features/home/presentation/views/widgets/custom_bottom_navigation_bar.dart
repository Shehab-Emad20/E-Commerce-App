import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/domain/entites/bottom_navigation_bar_entity.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/naivgation_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.onItemTapped});
 final ValueChanged<int> onItemTapped;
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
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
          children: bottomNavigationBarItems.asMap().entries.map((e) {
            var index = e.key;
            var entity = e.value;
            return Expanded(
              flex: index == selectedIndex ? 3 : 2,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: NaivgationBarItem(
                  isSelected: selectedIndex == index,
                  bottomNavigationBarEntity: entity,
                ),
              ),
            );
          }).toList(),
        ));
  }
}

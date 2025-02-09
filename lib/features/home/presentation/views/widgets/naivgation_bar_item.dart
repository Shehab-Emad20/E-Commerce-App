import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/domain/entites/bottom_navigation_bar_entity.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/active_item.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/in_activeItem.dart';

class NaivgationBarItem extends StatelessWidget {
  const NaivgationBarItem({
    super.key,
    required this.isSelected,
    required this.bottomNavigationBarEntity,
  });

  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem()
        : InActiveItem(
            image: bottomNavigationBarEntity.inActiveImage,
          );
  }
}

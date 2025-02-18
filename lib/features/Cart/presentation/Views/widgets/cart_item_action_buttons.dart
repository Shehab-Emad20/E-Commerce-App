import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CartItemActionButton(
        icon: Icons.add,
        color: AppColors.primaryColor,
        onTap: () {},
        iconColor: Colors.white,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          '1',
          textAlign: TextAlign.center,
          style: TextStyles.bold16,
        ),
      ),
      CartItemActionButton(
          icon: Icons.remove,
          color: Colors.grey,
          onTap: () {},
          iconColor: Color(0xFFF3F5F7)),
    ]);
  }
}

class CartItemActionButton extends StatelessWidget {
  const CartItemActionButton(
      {super.key,
      required this.icon,
      required this.color,
      required this.onTap,
      required this.iconColor});
  final IconData icon;
  final Color color, iconColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      padding: EdgeInsets.all(2),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: FittedBox(
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CartActionButton extends StatelessWidget {
  const CartActionButton(
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

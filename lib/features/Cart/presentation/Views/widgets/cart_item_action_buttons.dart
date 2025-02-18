import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/cart_action_button.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CartActionButton(
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
      CartActionButton(
          icon: Icons.remove,
          color: Colors.grey,
          onTap: () {},
          iconColor: Color(0xFFF3F5F7)),
    ]);
  }
}

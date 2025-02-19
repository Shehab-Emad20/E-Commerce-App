import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/features/Cart/domain/entites/cart_item_entity.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/cart_action_button.dart';
import 'package:flutter_application_1/features/Cart/presentation/cubit/cart_item_cubit/cart_item_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key, required this.cartItemEntity});

  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CartActionButton(
        icon: Icons.add,
        color: AppColors.primaryColor,
        onPressed: () {
          cartItemEntity.increasCount();
          context.read<CartItemCubit>().updateCartItem(cartItemEntity);
        },
        iconColor: Colors.white,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          cartItemEntity.count.toString(),
          textAlign: TextAlign.center,
          style: TextStyles.bold16,
        ),
      ),
      CartActionButton(
          icon: Icons.remove,
          color: Colors.grey,
          onPressed: () {
            cartItemEntity.decreasCount();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
          iconColor: Color(0xFFF3F5F7)),
    ]);
  }
}

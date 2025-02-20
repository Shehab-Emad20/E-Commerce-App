import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_button.dart';
import 'package:flutter_application_1/features/Cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter_application_1/features/Cart/presentation/cubit/cart_item_cubit/cart_item_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCartButton extends StatelessWidget {
  const CustomCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) {
        return CustomButton(
          onPressed: () {},
          text:
              'الدفع${context.watch<CartCubit>().cartEntity.calculateTotalPrice()} جنيه ',
        );
      },
    );
  }
}

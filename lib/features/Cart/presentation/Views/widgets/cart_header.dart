import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(color: Color(0xFFEBF9F1)),
      child: Center(
        child: Text(
          'لديك  ${context.watch<CartCubit>().cartEntity.cartItems.length} منتجات في سله التسوق',
          style: const TextStyle(
            color: Color(0xFF1B5E37),
            fontSize: 13,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w400,
            height: 0.12,
          ),
        ),
      ),
    );
  }
}

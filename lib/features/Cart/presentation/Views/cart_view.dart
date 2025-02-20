import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/cart_view_body.dart';
import 'package:flutter_application_1/features/Cart/presentation/cubit/cart_item_cubit/cart_item_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartItemCubit(),
      child: CartViewBody(),
    );
  }
}

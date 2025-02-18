import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/cart_item.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/custom_divider.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => CustomDivider(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CartItem(),
        );
      },
    );
  }
}

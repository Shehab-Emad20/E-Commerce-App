import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Cart/domain/entites/cart_item_entity.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/cart_item.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/custom_divider.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key, required this.cartItems});

  final List<CartItemEntity> cartItems;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => CustomDivider(),
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CartItem(
            cartItemEntity: cartItems[index],
          ),
        );
      },
    );
  }
}

import 'package:flutter_application_1/features/Cart/domain/entites/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItems;

  CartEntity(this.cartItems);


  addCartItem(CartItemEntity cartItemEntity) {
    cartItems.add(cartItemEntity);
  }
}

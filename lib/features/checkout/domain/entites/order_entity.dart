import 'package:flutter_application_1/features/Cart/domain/entites/cart_item_entity.dart';
import 'package:flutter_application_1/features/checkout/domain/entites/shipping_adress_entity.dart';

class OrderEntity {
  final List<CartItemEntity> cartItems;
  final bool payWithCash;
  final ShippingAdressEntity shippingAdressEntity;
  OrderEntity(this.cartItems, this.payWithCash, this.shippingAdressEntity);
}

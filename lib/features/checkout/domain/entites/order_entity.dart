import 'package:flutter_application_1/features/Cart/domain/entites/cart_entity.dart';

import 'package:flutter_application_1/features/checkout/domain/entites/shipping_adress_entity.dart';

class OrderEntity {
  final CartEntity cartEntity;
  bool? payWithCash;
  ShippingAdressEntity shippingAdressEntity;
  OrderEntity(
    this.cartEntity, {
    this.payWithCash,
    required this.shippingAdressEntity,
  });
}

import 'package:flutter_application_1/core/repos/orders_repo/order_product_model.dart';
import 'package:flutter_application_1/features/checkout/data/models/shipping_address_model.dart';
import 'package:flutter_application_1/features/checkout/domain/entites/order_entity.dart';

class OrderModel {
  final double totalPrice;

  final String uId;
  final ShippingAdressModel shippingAdressModel;
  final List<OrderProductModel> orderProducts;
  final String paymentMethod;

  OrderModel(
      {required this.totalPrice,
      required this.uId,
      required this.shippingAdressModel,
      required this.orderProducts,
      required this.paymentMethod});

  factory OrderModel.fromEntity(OrderEntity orderEntity) => OrderModel(
      totalPrice: orderEntity.cartEntity.calculateTotalPrice(),
      uId: orderEntity.uID,
      shippingAdressModel:
          ShippingAdressModel.fromEntity(orderEntity.shippingAdressEntity),
      orderProducts: orderEntity.cartEntity.cartItems
          .map((e) => OrderProductModel.fromEntity(cartItemEntity: e))
          .toList(),
      paymentMethod: orderEntity.payWithCash! ? 'Cash' : 'PayPal');

  toJson() => {
        'totalPrice': totalPrice,
        'uId': uId,
        'shippingAdressModel': shippingAdressModel,
        'orderProducts': orderProducts,
        'paymentMethod': paymentMethod
      };
}

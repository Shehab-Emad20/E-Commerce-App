import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/core/entity/add_product_entity.dart';

class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int quantity;

  CartItemEntity({required this.productEntity, this.quantity = 0});

  num calculateTotalPrice() {
    return productEntity.price * quantity;
  }

  num calculateTotalWeight() {
    return productEntity.unitAmount * quantity;
  }

  increasQuantity() {
    quantity++;
  }

  decreasQuantity() {
    quantity--;
  }

  @override
  List<Object?> get props => [productEntity];
}

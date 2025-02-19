import 'package:flutter_application_1/core/entity/add_product_entity.dart';

class CartItemEntity {
  final ProductEntity productEntity;
  int count;

  CartItemEntity({required this.productEntity, this.count = 0});

  num calculateTotalPrice() {
    return productEntity.price * count;
  }

  num calculateTotalWeight() {
    return productEntity.unitAmount * count;
  }

  increasCount() {
    count++;
  }

  decreasCount() {
    count--;
  }
}

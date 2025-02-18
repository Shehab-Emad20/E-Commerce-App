import 'package:flutter_application_1/core/entity/add_product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: "Apple",
    code: "123",
    description: "description",
    price: 10,
    isFeatured: true,
    imageUrl: null,
    expirationMonths: 12,
    numberOfCalories: 100,
    unitAmount: 1,
    isOrganic: true,
    reviews: [],
  );
}

List<ProductEntity> getDummyProducts() {
  return [
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
  ];
}

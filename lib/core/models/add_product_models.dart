import 'dart:io';
import 'package:flutter_application_1/core/entity/add_product_entity.dart';
import 'package:flutter_application_1/core/models/review_model.dart';

class AddProducttModel {
  final String name;
  final String code;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitAmount;
  final num avgRating = 0;
  final int ratingCount = 0;
  final List<ReviewModel> reviews;
  AddProducttModel(
      {required this.name,
      required this.code,
      required this.description,
      required this.price,
      required this.image,
      required this.isFeatured,
      this.imageUrl,
      required this.expirationMonths,
      required this.numberOfCalories,
      required this.unitAmount,
      this.isOrganic = false,
      required this.reviews});

  factory AddProducttModel.fromEntity(AddProductEntity addProductInputEntity) =>
      AddProducttModel(
        name: addProductInputEntity.name,
        code: addProductInputEntity.code,
        description: addProductInputEntity.description,
        price: addProductInputEntity.price,
        image: addProductInputEntity.image,
        isFeatured: addProductInputEntity.isFeatured,
        imageUrl: addProductInputEntity.imageUrl,
        expirationMonths: addProductInputEntity.expirationMonths,
        numberOfCalories: addProductInputEntity.numberOfCalories,
        unitAmount: addProductInputEntity.unitAmount,
        isOrganic: addProductInputEntity.isOrganic,
        reviews: addProductInputEntity.reviews
            .map((e) => ReviewModel.fromEntiyt(e))
            .toList(),
      );

  toJson() {
    return {
      "name": name,
      "code": code,
      "description": description,
      "price": price,
      "isFeatured": isFeatured,
      "imageUrl": imageUrl,
      "expirationMonths": expirationMonths,
      "numberOfCalories": numberOfCalories,
      "unitAmount": unitAmount,
      "isOrganic": isOrganic,
      "reviews": reviews.map((e) => e.toJson()).toList(),
    };
  }
}

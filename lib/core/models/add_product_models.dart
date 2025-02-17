import 'package:flutter_application_1/core/entity/add_product_entity.dart';
import 'package:flutter_application_1/core/helper_function/get_avg_rating.dart';
import 'package:flutter_application_1/core/models/review_model.dart';

class ProducttModel {
  final String name;
  final String code;
  final String description;
  final num price;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitAmount;
  final num avgRating;
  final int sellingCount;
  final int ratingCount = 0;

  final List<ReviewModel> reviews;
  ProducttModel(
      {required this.name,
      required this.code,
      required this.description,
      required this.price,
      required this.isFeatured,
      this.imageUrl,
      required this.expirationMonths,
      required this.numberOfCalories,
      required this.unitAmount,
      this.isOrganic = false,
      required this.sellingCount,
      required this.avgRating,
      required this.reviews});

  factory ProducttModel.fromJson(Map<String, dynamic> json) {
    return ProducttModel(
      avgRating: getAvgRating(json['avgRating']),
      name: json['name'],
      code: json['code'],
      description: json['description'],
      price: json['price'],
      isFeatured: json['isFeatured'],
      imageUrl: json['imageUrl'],
      expirationMonths: json['expirationMonths'],
      numberOfCalories: json['numberOfCalories'],
      unitAmount: json['unitAmount'],
      isOrganic: json['isOrganic'],
      sellingCount: json['sellingCount'],
      reviews: json['reviews'] != null
          ? List<ReviewModel>.from(
              json['reviews'].map((e) => ReviewModel.fromJson(e)))
          : [],
    );
  }
  ProductEntity toEntity() {
    return ProductEntity(
      name: name,
      code: code,
      description: description,
      price: price,
      isFeatured: isFeatured,
      imageUrl: imageUrl,
      expirationMonths: expirationMonths,
      numberOfCalories: numberOfCalories,
      unitAmount: unitAmount,
      isOrganic: isOrganic,
      reviews: reviews.map((e) => e.toEntity()).toList(),
    );
  }

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


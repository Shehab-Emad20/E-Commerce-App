import 'dart:io';
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
  final int sellingCount;
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
      required this.sellingCount,
      required this.reviews});

  factory AddProducttModel.fromJson(Map<String, dynamic> json) {
    return AddProducttModel(
      name: json['name'],
      code: json['code'],
      description: json['description'],
      price: json['price'],
      image: File(json['image']),
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

import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/core/entity/review_entity.dart';

class ProductEntity extends Equatable {
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
  final num avgRating = 0;
  final int ratingCount = 0;
  final List<ReviewEntity> reviews;

  ProductEntity(
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
      required this.reviews});

  @override
  List<Object?> get props => [code];
}

import 'package:flutter_application_1/core/entity/review_entity.dart';

class ReviewModel {
  final String name;
  final String image;
  final num ratting;
  final String data;
  final String reviewDescription;

  ReviewModel(
      {required this.name,
      required this.image,
      required this.ratting,
      required this.data,
      required this.reviewDescription});

  factory ReviewModel.fromEntiyt(ReviewEntity reviewEntity) {
    return ReviewModel(
        name: reviewEntity.name,
        image: reviewEntity.image,
        ratting: reviewEntity.ratting,
        data: reviewEntity.data,
        reviewDescription: reviewEntity.reviewDescription);
  }

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
        name: json['name'],
        image: json['image'],
        ratting: json['ratting'],
        data: json['data'],
        reviewDescription: json['reviewDescription']);
  }
  ReviewEntity toEntity() {
    return ReviewEntity(
        name: name,
        image: image,
        ratting: ratting,
        data: data,
        reviewDescription: reviewDescription);
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'ratting': ratting,
      'data': data,
      'reviewDescription': reviewDescription
    };
  }
}

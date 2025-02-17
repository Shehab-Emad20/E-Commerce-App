import 'package:flutter_application_1/core/entity/review_entity.dart';

num getAvgRating(List<ReviewEntity> reviews) {
   
   var sum = 0.0;
   for (var review in reviews) {
     sum += review.ratting;
   }
   return sum / reviews.length;


}

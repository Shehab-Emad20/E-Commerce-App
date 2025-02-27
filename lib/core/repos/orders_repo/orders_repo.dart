import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/features/checkout/domain/entites/order_entity.dart';

abstract class OrdersRepo {
  Future<Either<Failure, void>> addOrder({required OrderEntity order});
}

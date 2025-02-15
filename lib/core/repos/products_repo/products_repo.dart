import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/entity/add_product_entity.dart';
import 'package:flutter_application_1/core/error/failures.dart';

abstract class ProductsRepo {
  Future<Either<Failure, List<AddProductEntity>>> getProducts();

  Future<Either<Failure, List<AddProductEntity>>> getBestSellingProducts();
}

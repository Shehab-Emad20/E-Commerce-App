import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/entity/add_product_entity.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/core/repos/products_repo/products_repo.dart';
import 'package:flutter_application_1/core/services/data_services.dart';

class ProductsRepoImpl extends ProductsRepo {
  final DatabaseService databaseServices;

  ProductsRepoImpl(this.databaseServices);
  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() {
    // TODO: implement getBestSellingProducts
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }
}

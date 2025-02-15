import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/entity/add_product_entity.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/core/models/add_product_models.dart';
import 'package:flutter_application_1/core/repos/products_repo/products_repo.dart';
import 'package:flutter_application_1/core/services/data_services.dart';
import 'package:flutter_application_1/core/utils/backend_endpoints.dart';

class ProductsRepoImpl extends ProductsRepo {
  final DatabaseService databaseServices;

  ProductsRepoImpl(this.databaseServices);
  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() {
    // TODO: implement getBestSellingProducts
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      var data = await databaseServices.getData(
          path: BackendEndpoints.getProducts) as List<Map<String, dynamic>>;
      List<ProductEntity> products =
          data.map((e) => ProducttModel.fromJson(e).toEntity()).toList();

      return right(products);
    } catch (e) {
      return left(ServerFailur('Failed to get products'));
    }
  }
}

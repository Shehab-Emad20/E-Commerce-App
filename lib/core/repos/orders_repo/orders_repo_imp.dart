import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/core/repos/orders_repo/orders_repo.dart';
import 'package:flutter_application_1/core/services/data_services.dart';
import 'package:flutter_application_1/core/utils/backend_endpoints.dart';
import 'package:flutter_application_1/features/checkout/data/models/order_model.dart';
import 'package:flutter_application_1/features/checkout/domain/entites/order_entity.dart';

class OrdersRepoImp implements OrdersRepo {
  final DatabaseService fireStoreServices;

  OrdersRepoImp(this.fireStoreServices);
  @override
  Future<Either<Failure, void>> addOrder({required OrderEntity order}) async {
    try {
      await fireStoreServices.addData(
          path: BackendEndpoints.addOrder,
          data: OrderModel.fromEntity(order).toJson());
      return right(null);
    } catch (e) {
      return left(ServerFailur(e.toString()));
    }
  }
}

import 'package:flutter_application_1/core/repos/orders_repo/orders_repo.dart';
import 'package:flutter_application_1/core/repos/orders_repo/orders_repo_imp.dart';
import 'package:flutter_application_1/core/repos/products_repo/products_repo.dart';
import 'package:flutter_application_1/core/repos/products_repo/products_repo_impl.dart';
import 'package:flutter_application_1/core/services/data_services.dart';
import 'package:flutter_application_1/core/services/fire_base_auth_services.dart';
import 'package:flutter_application_1/core/services/firestore._services.dart';
import 'package:flutter_application_1/features/auth/data/repos/auth_repo_impl.dart';
import 'package:flutter_application_1/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FireBaseAuthServices>(FireBaseAuthServices());

  getIt.registerSingleton<DatabaseService>(FirestoreServices());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      fireBaseAuthServices: getIt<FireBaseAuthServices>(),
      databaseService: getIt<DatabaseService>(),
    ),
  );

  getIt.registerSingleton<ProductsRepo>(
    ProductsRepoImpl(
      getIt<DatabaseService>(),
    ),
  );

  getIt.registerSingleton<OrdersRepo>(
    OrdersRepoImp(
      getIt<DatabaseService>(),
    ),
  );
}

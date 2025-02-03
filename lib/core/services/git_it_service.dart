import 'package:flutter_application_1/core/services/fire_base_auth_services.dart';
import 'package:flutter_application_1/features/auth/data/repos/auth_repo_impl.dart';
import 'package:flutter_application_1/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FireBaseAuthServices>(FireBaseAuthServices());
  getIt.registerSingleton<AuthRepo>(
      AuthRepoImpl(fireBaseAuthServices: getIt<FireBaseAuthServices>()));
}

import 'package:flutter_application_1/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<UserEntity> createUserWithEmailAndPassword(
    String email,
    String password,
  );
}

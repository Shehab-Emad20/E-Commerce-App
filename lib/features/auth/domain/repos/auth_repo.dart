import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  );
}

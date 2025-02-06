import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/core/services/data_services.dart';
import 'package:flutter_application_1/core/services/fire_base_auth_services.dart';
import 'package:flutter_application_1/core/utils/backend_endpoints.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';
import 'package:flutter_application_1/features/auth/domain/entites/user_entity.dart';
import 'package:flutter_application_1/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FireBaseAuthServices fireBaseAuthServices;
  final DatabaseService databaseService;

  AuthRepoImpl(
      {required this.databaseService, required this.fireBaseAuthServices});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await fireBaseAuthServices.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserDate(user: userEntity);
      return right(userEntity);
    } on CustomExcepton catch (e) {
      return left(ServerFailur(e.message));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl. createUserWithEmailAndPassword: ${e.toString()}',
      );
      return left(ServerFailur('لقد حدث خطأ ما.'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await fireBaseAuthServices.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user!));
    } on CustomExcepton catch (e) {
      return left(ServerFailur(e.message));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl. signInWithEmailAndPassword: ${e.toString()}',
      );
      return left(ServerFailur('لقد حدث خطأ ما.'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await fireBaseAuthServices.signInWithGoogle();
      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl. signInWithGoogle: ${e.toString()}',
      );
      return left(ServerFailur('لقد حدث خطأ ما.'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await fireBaseAuthServices.signInWithFacebook();
      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl. signInWithFacebook: ${e.toString()}',
      );
      return left(ServerFailur('لقد حدث خطأ ما.'));
    }
  }

  @override
  Future addUserDate({required UserEntity user}) async {
    await databaseService.addData(
        path: BackendEndpoints.addUserData, data: user.toMap());
  }
}

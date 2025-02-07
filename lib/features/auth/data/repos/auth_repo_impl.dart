import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    User? user;
    try {
      user = await fireBaseAuthServices.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserEntity(name: name, email: email, uId: user.uid);
      await addUserDate(user: userEntity);
      return right(userEntity);
    } on CustomExcepton catch (e) {
      await deleteUser(user);
      return left(ServerFailur(e.message));
    } catch (e) {
      await deleteUser(user);
      log(
        'Exception in AuthRepoImpl. createUserWithEmailAndPassword: ${e.toString()}',
      );
      return left(ServerFailur('لقد حدث خطأ ما.'));
    }
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await fireBaseAuthServices.deleteUser();
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await fireBaseAuthServices.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      var userEntity = await getUserData(uid: user.uid);
      return right(userEntity);
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
    User? user;
    try {
      user = await fireBaseAuthServices.signInWithGoogle();

      var userEntity = UserModel.fromFirebaseUser(user);
      var isUserExits = await databaseService.checkIfDataExists(
          path: BackendEndpoints.isUserExists, docuementId: user.uid);

      if (isUserExits) {
        await getUserData(uid: user.uid);
      } else {
        await addUserDate(user: userEntity);
      }

      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log(
        'Exception in AuthRepoImpl. signInWithGoogle: ${e.toString()}',
      );
      return left(ServerFailur('لقد حدث خطأ ما.'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await fireBaseAuthServices.signInWithFacebook();
      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserDate(user: userEntity);
      var isUserExits = await databaseService.checkIfDataExists(
          path: BackendEndpoints.isUserExists, docuementId: user.uid);

      if (isUserExits) {
        await getUserData(uid: user.uid);
      } else {
        await addUserDate(user: userEntity);
      }
      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log(
        'Exception in AuthRepoImpl. signInWithFacebook: ${e.toString()}',
      );
      return left(ServerFailur('لقد حدث خطأ ما.'));
    }
  }

  @override
  Future addUserDate({required UserEntity user}) async {
    await databaseService.addData(
        path: BackendEndpoints.addUserData,
        data: user.toMap(),
        docuementId: user.uId);
  }

  @override
  Future<UserEntity> getUserData({required String uid}) async {
    var userData = await databaseService.getData(
        path: BackendEndpoints.getUserData, docuementId: uid);

    return UserModel.formJson(userData);
  }
}

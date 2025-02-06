import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/features/auth/domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.email,
    required super.name,
    required super.uId,
  });

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      uId: user.uid,
    );
  }

  factory UserModel.formJson(Map<String, dynamic> json) => UserModel(
        name: json['name'],
        email: json['email'],
        uId: json['uId'],
      );
}

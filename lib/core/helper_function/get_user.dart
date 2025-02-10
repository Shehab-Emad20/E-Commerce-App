import 'dart:convert';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/services/shared_preferences_singleton.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';
import 'package:flutter_application_1/features/auth/domain/entites/user_entity.dart';

UserEntity getUser() {
  var jsonString = Prefs.getString(kUser);
  var userEntity = UserModel.formJson(jsonDecode(jsonString));
  return userEntity;
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/core/services/data_services.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';
import 'package:flutter_application_1/features/auth/domain/entites/user_entity.dart';

class FirestoreServices implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path, required Map<String, dynamic> data}) async {
    await firestore.collection(path).add(data);
  }

  @override
  Future<UserEntity> getUserData(
      {required String path, required String uid}) async {
    var data = await firestore.collection(path).doc(uid).get();

    return UserModel.formJson(data.data() as Map<String, dynamic>);
  }
}

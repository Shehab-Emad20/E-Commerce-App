import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/core/services/data_services.dart';

class FirestoreServices implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path, required Map<String, dynamic> data}) async {
       await firestore.collection(path).add(data);
  }
}

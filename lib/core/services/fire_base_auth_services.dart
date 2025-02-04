import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/core/error/exception.dart';

class FireBaseAuthServices {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomExcepton(message: 'كلمة السرية ضعيفة');
      } else if (e.code == 'email-already-in-use') {
        throw CustomExcepton(
            message: 'لقد تم استخدام هذا البريد الإلكتروني من قبل.');
      } else {
        throw CustomExcepton(message: 'لقد حدث خطأ ما');
      }
    } catch (e) {
      throw CustomExcepton(message: 'لقد حدث خطأ ما');
    }
  }
}

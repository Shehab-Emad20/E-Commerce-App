import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
      log('Exception in FireBaseAuthServices.createUserWithEmailAndPassword: ${e.toString()}and code is ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomExcepton(message: 'كلمة السرية ضعيفة');
      } else if (e.code == 'email-already-in-use') {
        throw CustomExcepton(
            message: 'لقد تم استخدام هذا البريد الإلكتروني من قبل.');
      } else if (e.code == 'network-request-failed') {
        throw CustomExcepton(message: 'لا يوجد اتصال تأكد من اتصالك بالانترنت');
      } else {
        throw CustomExcepton(message: 'لقد حدث خطأ ما');
      }
    } catch (e) {
      log('Exception in FireBaseAuthServices.createUserWithEmailAndPassword: ${e.toString()}');
      throw CustomExcepton(message: 'لقد حدث خطأ ما');
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FireBaseAuthServices.signInWithEmailAndPassword: ${e.toString()}and code is ${e.code}');
      if (e.code == 'user-not-found') {
        throw CustomExcepton(
            message: 'كلمة المرور أو البريد الإلكتروني غير صحيحة');
      } else if (e.code == 'wrong-password') {
        throw CustomExcepton(
            message: 'كلمة المرور أو البريد الإلكتروني غير صحيحة');
      } else if (e.code == 'network-request-failed') {
        throw CustomExcepton(message: 'لا يوجد اتصال تأكد من اتصالك بالانترنت');
      } else {
        throw CustomExcepton(message: 'لقد حدث خطأ ما');
      }
    } catch (e) {
      log('Exception in FireBaseAuthServices.signInWithEmailAndPassword: ${e.toString()}');
      throw CustomExcepton(message: 'لقد حدث خطأ ما');
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    return (await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential))
        .user!;
  }
}

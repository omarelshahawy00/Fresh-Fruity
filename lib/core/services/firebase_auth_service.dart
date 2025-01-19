import 'dart:developer';

import 'package:ecommerce_app/core/errors/custom_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
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
      log('FirebaseAuthException.createUserWithEmailAndPassword: ${e.toString()}');
      if (e.code == 'weak-password') {
        throw CustomException('كلمة المرور ضعيفة');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('البريد الالكتروني مستخدم بالفعل');
      } else if (e.code == 'network-request-failed') {
        throw CustomException('تحقق من اتصالك بالانترنت');
      } else {
        throw CustomException('حدث خطأ ما الرجاء المحاولة في وقت لاحق');
      }
    } catch (e) {
      log('FirebaseAuthException.createUserWithEmailAndPassword: ${e.toString()}');
      throw CustomException('حدث خطأ ما الرجاء المحاولة في وقت لاحق');
    }
  }

  Future<User> signInWithEmailAndPassword(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('FirebaseAuthException.signInWithEmailAndPassword: ${e.toString()}');
      if (e.code == 'invalid-credential') {
        throw CustomException('البريد الالكتروني او كلمة المرور غير صحيح');
      } else if (e.code == 'invalid-credential') {
        throw CustomException('البريد الالكتروني او كلمة المرور غير صحيح');
      } else if (e.code == 'network-request-failed') {
        throw CustomException('تحقق من اتصالك بالانترنت');
      } else {
        throw CustomException('حدث خطأ ما الرجاء المحاولة في وقت لاحق');
      }
    } catch (e) {
      log('FirebaseAuthException.signInWithEmailAndPassword: ${e.toString()}');
      throw CustomException('حدث خطأ ما الرجاء المحاولة في وقت لاحق');
    }
  }

  Future<User> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }
}

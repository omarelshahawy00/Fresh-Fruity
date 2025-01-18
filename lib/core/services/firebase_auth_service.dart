import 'dart:developer';

import 'package:ecommerce_app/core/errors/custom_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
}

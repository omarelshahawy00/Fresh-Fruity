import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/custom_exception.dart';
import 'package:ecommerce_app/core/errors/failure.dart';
import 'package:ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  FirebaseAuthService firebaseAuthService;

  AuthRepoImpl(this.firebaseAuthService);
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String userName) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.formFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما الرجاء المحاولة في وقت لاحق'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user =
          await firebaseAuthService.signInWithEmailAndPassword(email, password);
      return right(UserModel.formFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithEmailAndPassword: ${e.toString()}');
    }
    return left(ServerFailure('حدث خطأ ما الرجاء المحاولة في وقت لاحق'));
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return right(UserModel.formFirebaseUser(user));
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithGoogle: ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما الرجاء المحاولة في وقت لاحق'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return right(UserModel.formFirebaseUser(user));
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithFacebook: ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما الرجاء المحاولة في وقت لاحق'));
    }
  }
}

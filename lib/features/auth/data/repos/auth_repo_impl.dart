import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failure.dart';
import 'package:ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entites/user_entite.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  FirebaseAuthService firebaseAuthService;

  AuthRepoImpl(this.firebaseAuthService);
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String userName) async {
    var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email, password: password);
    return right(UserModel.formFirebaseUser(user));
  }
}

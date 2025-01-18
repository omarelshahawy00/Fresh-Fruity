import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.email,
    required super.uId,
    required super.userName,
  });

  factory UserModel.formFirebaseUser(User user) {
    return UserModel(
      email: user.email ?? '',
      uId: user.uid,
      userName: user.displayName ?? '',
    );
  }
}

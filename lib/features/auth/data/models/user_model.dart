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

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      uId: json['uId'],
      userName: json['userName'],
    );
  }
  factory UserModel.fromUserEntity(UserEntity userEntity) {
    return UserModel(
      email: userEntity.email,
      uId: userEntity.uId,
      userName: userEntity.userName,
    );
  }
  toMap() {
    return {
      'email': email,
      'uId': uId,
      'userName': userName,
    };
  }
}

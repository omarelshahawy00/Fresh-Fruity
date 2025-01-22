class UserEntity {
  final String email;
  final String uId;
  final String userName;
  UserEntity({required this.email, required this.uId, required this.userName});

  toMap() {
    return {
      'email': email,
      'uId': uId,
      'userName': userName,
    };
  }
}

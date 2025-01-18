part of 'login_cubit.dart';

class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginLoaded extends LoginState {
  final UserEntity user;
  LoginLoaded(this.user);
}

final class LoginError extends LoginState {
  final String message;
  LoginError(this.message);
}

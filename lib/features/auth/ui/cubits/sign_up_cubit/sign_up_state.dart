part of 'sign_up_cubit.dart';

class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpLoaded extends SignUpState {
  final UserEntity user;
  SignUpLoaded(this.user);
}

final class SignUpError extends SignUpState {
  final String message;
  SignUpError(this.message);
}

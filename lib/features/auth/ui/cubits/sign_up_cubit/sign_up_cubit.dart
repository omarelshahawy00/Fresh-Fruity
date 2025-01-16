import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/auth/domain/entites/user_entite.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepo authRepo;
  SignUpCubit(this.authRepo) : super(SignUpInitial());

  Future<void> signUp(String email, String password, String userName) async {
    emit(SignUpLoading());
    final userData = await authRepo.createUserWithEmailAndPassword(
        email, password, userName);

    userData.fold(
      (failure) {
        emit(SignUpError(failure.message));
      },
      (user) {
        emit(SignUpLoaded(user));
      },
    );
  }
}

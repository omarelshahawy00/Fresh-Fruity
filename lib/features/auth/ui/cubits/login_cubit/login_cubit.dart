import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());

  final AuthRepo authRepo;

  Future<void> login(String email, String password) async {
    emit(LoginLoading());
    var result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(LoginError(failure.message)),
      (user) => emit(LoginLoaded(user)),
    );
  }

  Future<void> loginWithGoogle() async {
    emit(LoginLoading());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(LoginError(failure.message)),
      (user) => emit(LoginLoaded(user)),
    );
  }
}

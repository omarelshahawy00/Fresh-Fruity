import 'package:ecommerce_app/core/helper_functions/on_generate_route.dart';
import 'package:ecommerce_app/core/widgets/custom_modal_progress_hud.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helper_functions/build_error_bar.dart';
import '../../../cubits/login_cubit/login_cubit.dart';
import 'login_screen_body.dart';

class LoginScreenBodyBlocConsumer extends StatelessWidget {
  const LoginScreenBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoaded) {
          Navigator.pushReplacementNamed(context, AppRouter.homeScreen);
        } else if (state is LoginError) {
          buildSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomModalProgressHud(
          isLoading: state is LoginLoading ? true : false,
          child: LoginScreenBody(),
        );
      },
    );
  }
}

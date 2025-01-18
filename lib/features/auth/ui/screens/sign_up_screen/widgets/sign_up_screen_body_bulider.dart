import 'package:ecommerce_app/core/helper_functions/build_error_bar.dart';
import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../cubits/sign_up_cubit/sign_up_cubit.dart';
import 'sign_up_screen_body.dart';

class SignUpScreenBodyBlocConsumer extends StatelessWidget {
  const SignUpScreenBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpLoaded) {
          buildSnackBar(
            context,
            'تم انشاء الحساب بنجاح',
            backgroundColor: ColorsManager.mainGreen,
          );
          Navigator.pop(context);
        } else if (state is SignUpError) {
          buildSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignUpLoading ? true : false,
          child: const SignUpScreenBody(),
        );
      },
    );
  }
}

class ErrorsnackBar extends StatelessWidget {
  const ErrorsnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

import 'package:ecommerce_app/core/services/get_it_service.dart';
import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:ecommerce_app/features/auth/ui/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:ecommerce_app/features/auth/ui/screens/sign_up_screen/widgets/sign_up_screen_body_bulider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppbar(context, title: 'حساب جديد'),
        body: SignUpScreenBodyBlocConsumer(),
      ),
    );
  }
}

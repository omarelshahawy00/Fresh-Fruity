import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/features/auth/ui/screens/sign_up_screen/widgets/sign_up_screen_body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context, title: 'حساب جديد'),
      body: const SignUpScreenBody(),
    );
  }
}

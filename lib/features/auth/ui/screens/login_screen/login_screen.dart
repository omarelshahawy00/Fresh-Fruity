import 'package:ecommerce_app/features/auth/ui/screens/login_screen/widgets/login_screen_body_bloc_consumer.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_appbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context, title: 'تسجيل الدخول'),
      body: LoginScreenBodyBlocConsumer(),
    );
  }
}

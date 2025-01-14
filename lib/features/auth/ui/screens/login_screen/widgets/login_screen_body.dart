import 'package:ecommerce_app/features/auth/ui/screens/login_screen/widgets/do_not_have_acc.dart';
import 'package:ecommerce_app/features/auth/ui/screens/login_screen/widgets/email_and_password_section.dart';
import 'package:ecommerce_app/features/auth/ui/screens/login_screen/widgets/login_method.dart';
import 'package:ecommerce_app/features/auth/ui/screens/login_screen/widgets/or_divider.dart';
import 'package:flutter/material.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          spacing: 16,
          children: [
            SizedBox(height: 5),
            EmailAndPasswordSection(),
            SizedBox(height: 10),
            DoNotHaveAcc(),
            SizedBox(height: 10),
            OrDivider(),
            LoginMethod(),
          ],
        ),
      ),
    );
  }
}

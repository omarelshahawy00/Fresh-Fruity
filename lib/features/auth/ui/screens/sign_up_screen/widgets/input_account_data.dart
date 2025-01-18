import 'package:ecommerce_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/theming/styles.dart';
import '../../../../../../core/widgets/password_field.dart';

class InputAccountData extends StatelessWidget {
  final String? Function(String?) onSavedUserName;
  final String? Function(String?) onSavedEmail;
  final String? Function(String?) onSavedPassword;

  const InputAccountData({
    super.key,
    required this.onSavedUserName,
    required this.onSavedEmail,
    required this.onSavedPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        AppTextFormField(
          onSaved: onSavedUserName,
          fillColor: Color(0xfff9fafa),
          hintText: 'الاسم كامل',
          hintTextStyle: TextStyles.size13Weight700,
          borderRadius: BorderRadius.circular(4),
          backgroundColor: Color(0xfff9fafa),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xffe6e9ea),
          ),
        ),
        AppTextFormField(
          onSaved: onSavedEmail,
          fillColor: Color(0xfff9fafa),
          hintText: 'البريد الالكتروني',
          hintTextStyle: TextStyles.size13Weight700,
          borderRadius: BorderRadius.circular(4),
          backgroundColor: Color(0xfff9fafa),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xffe6e9ea),
          ),
        ),
        PasswordField(onSavedPassword: onSavedPassword),
      ],
    );
  }
}

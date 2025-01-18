import 'package:ecommerce_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import '../theming/styles.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.onSavedPassword,
  });

  final String? Function(String?) onSavedPassword;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isObsecureText = true;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      onSaved: widget.onSavedPassword,
      fillColor: Color(0xfff9fafa),
      hintText: 'كلمة المرور',
      isObscureText: isObsecureText,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            isObsecureText = !isObsecureText;
          });
        },
        child: Icon(
          isObsecureText ? Icons.visibility_off : Icons.visibility,
          size: 24,
          color: Color(0xffc9cecf),
        ),
      ),
      hintTextStyle: TextStyles.size13Weight700,
      borderRadius: BorderRadius.circular(4),
      backgroundColor: Color(0xfff9fafa),
      borderSide: BorderSide(
        width: 1,
        color: Color(0xffe6e9ea),
      ),
    );
  }
}

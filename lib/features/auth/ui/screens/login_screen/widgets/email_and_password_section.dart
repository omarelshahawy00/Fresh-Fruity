import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/core/widgets/app_text_form_field.dart';
import 'package:ecommerce_app/core/widgets/password_field.dart';
import 'package:ecommerce_app/features/auth/ui/cubits/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/widgets/app_text_button.dart';

class EmailAndPasswordSection extends StatefulWidget {
  const EmailAndPasswordSection({
    super.key,
  });

  @override
  State<EmailAndPasswordSection> createState() =>
      _EmailAndPasswordSectionState();
}

class _EmailAndPasswordSectionState extends State<EmailAndPasswordSection> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 16,
        children: [
          AppTextFormField(
            onSaved: (data) => email = data!,
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
          PasswordField(
            onSavedPassword: (data) => password = data!,
          ),
          Text(
            'نسيت كلمة المرور؟',
            style: TextStyles.size13Weight600
                .copyWith(color: ColorsManager.mainLighterGreen),
          ),
          SizedBox(height: 7),
          AppTextButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                print({formKey.currentState!.save()});
                BlocProvider.of<LoginCubit>(context).login(email, password);
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
            buttonText: 'تسجيل الدخول',
            buttonWidth: double.maxFinite,
            buttonHeight: 52,
            borderRadius: BorderRadius.circular(16),
            backgroundColor: ColorsManager.mainGreen,
            textStyle: TextStyles.size16Weight700,
          ),
        ],
      ),
    );
  }
}

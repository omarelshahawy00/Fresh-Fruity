import 'package:ecommerce_app/core/helper_functions/build_error_bar.dart';
import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:ecommerce_app/core/widgets/app_text_button.dart';
import 'package:ecommerce_app/features/auth/ui/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:ecommerce_app/features/auth/ui/screens/sign_up_screen/widgets/input_account_data.dart';
import 'package:ecommerce_app/features/auth/ui/screens/sign_up_screen/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreenBody extends StatefulWidget {
  const SignUpScreenBody({super.key});

  @override
  State<SignUpScreenBody> createState() => _SignUpScreenBodyState();
}

class _SignUpScreenBodyState extends State<SignUpScreenBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password, userName;
  late bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            spacing: 16,
            children: [
              SizedBox(height: 5),
              InputAccountData(
                onSavedEmail: (value) => email = value!,
                onSavedPassword: (value) => password = value!,
                onSavedUserName: (value) => userName = value!,
              ),
              TermsAndConditions(
                isChecked: (value) {
                  isChecked = value;
                },
              ),
              SizedBox(height: 1),
              AppTextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    if (isChecked) {
                      BlocProvider.of<SignUpCubit>(context)
                          .signUp(email, password, userName);
                    } else {
                      buildSnackBar(
                          context, 'يجب الموافقة على الشروط والاحكام');
                    }
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'تمتلك حساب بالفعل؟',
                    style: TextStyles.size16Weight600
                        .copyWith(color: ColorsManager.LightText),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyles.size16Weight600
                          .copyWith(color: ColorsManager.mainGreen),
                    ),
                  ),
                  SizedBox(height: 17),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

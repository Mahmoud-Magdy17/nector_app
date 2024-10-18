import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/widgets/custom_button.dart';

import 'custom_email_form_field.dart';
import 'custom_password_form_field.dart';
import 'dont_have_account_action.dart';
import 'forget_password_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        const CustomEmailFormField(label: AppStrings.logIn),
        const SizedBox(
          height: 30,
        ),
        const CustomPasswordFormField(label: AppStrings.password,),
        const ForgetPasswordButton(),
        const SizedBox(height: 10),
        CustomButton(
          text: AppStrings.logIn,
          onPressed: () {},
        ),
        const SizedBox(
          height: 25,
        ),
        DontHaveAcountAction(
          action: AppStrings.signUp,
          onPressed: () {
            
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_functions.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/widgets/custom_text_button.dart';

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
        const CustomEmailFormField(),
        const SizedBox(
          height: 30,
        ),
        const CustomPasswordFormField(
          label: AppStrings.password,
        ),
        const ForgetPasswordButton(),
        const SizedBox(height: 10),
        CustomTextButton(
          text: AppStrings.logIn,
          onPressed: () {
            navigationPushReplacement(
              context,
              AppRouter.routes[AppRouter.homeView],
            );
          },
        ),
        const SizedBox(
          height: 25,
        ),
        OtherAuthenticationActoins(
          text: AppStrings.dontHaveAnAccount,
          action: AppStrings.signUp,
          onPressed: () {
            navigationPushReplacement(
              context,
              AppRouter.routes[AppRouter.signUpView],
            );
          },
        ),
      ],
    );
  }
}

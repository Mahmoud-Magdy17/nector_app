
import 'package:flutter/material.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_functions.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/widgets/custom_text_button.dart';

import 'custom_email_form_field.dart';
import 'custom_password_form_field.dart';
import 'custom_user_name_form_field.dart';
import 'dont_have_account_action.dart';
import 'terms_line.dart';

class SignupViewBodyContent extends StatelessWidget {
  const SignupViewBodyContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomUserNameFormField(label: AppStrings.userName),
        const SizedBox(
          height: 30,
        ),
        const CustomEmailFormField(),
        const SizedBox(
          height: 30,
        ),
        const CustomPasswordFormField(label: AppStrings.password),
        const SizedBox(
          height: 20,
        ),
        const TermsLine(),
        const SizedBox(
          height: 30,
        ),
        CustomTextButton(
            text: AppStrings.signUp,
            onPressed: () {
              navigationPush(
                  context,
                  AppRouter
                      .routes[AppRouter.singupDataCollectMethodView]);
            }),
        const SizedBox(
          height: 25,
        ),
        OtherAuthenticationActoins(
          text: AppStrings.alreadyHaveAnAccount,
          action: AppStrings.logIn,
          onPressed: () {
            navigationPushReplacement(
                context, AppRouter.routes[AppRouter.loginView]);
          },
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_functions.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/widgets/custom_button.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/authontication_view_header.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_email_form_field.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_password_form_field.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_user_name_form_field.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/dont_have_account_action.dart';

import 'terms_line.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const AuthonticationViewsHeader(
              title: AppStrings.signUp,
              subTitle: AppStrings.enterYourCredentialsToContinue,
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomUserNameFormField(label: AppStrings.userName),
            const SizedBox(
              height: 30,
            ),
            const CustomEmailFormField(label: AppStrings.email),
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
            CustomButton(text: AppStrings.signUp, onPressed: () {}),
            const SizedBox(
              height: 25,
            ),
            OtherAuthenticationActoins(
              text: AppStrings.alreadyHaveAnAccount,
              action: AppStrings.logIn,
              onPressed: () {
                navigationPushReplacement(context, AppRouter.routes[AppRouter.loginView]);
              },
            )
          ],
        ),
      ),
    );
  }
}

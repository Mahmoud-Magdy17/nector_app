import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/authontication_view_header.dart';

import 'signup_view_body_content.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              AuthonticationViewsHeader(
                title: AppStrings.signUp,
                subTitle: AppStrings.enterYourCredentialsToContinue,
              ),
              SizedBox(
                height: 40,
              ),
              SignupViewBodyContent(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_strings.dart';

import 'authontication_view_header.dart';
import 'signin_view_body_content.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AuthonticationViewsHeader(
                title: AppStrings.loging,
                subTitle: AppStrings.enterYourEmailAndPassword,
              ),
              SigninViewBodyContent(),
            ],
          ),
        ),
      ),
    );
  }
}

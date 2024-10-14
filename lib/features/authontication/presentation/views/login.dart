import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/login_view_body.dart';

import 'widgets/custom_scaffold.dart';
import 'widgets/login_view_header.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ListView(
            children: const [
              AuthonticationViewsHeader(
                title: AppStrings.loging,
                subTitle: AppStrings.enterYourEmailAndPassword,
              ),
              LoginViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}

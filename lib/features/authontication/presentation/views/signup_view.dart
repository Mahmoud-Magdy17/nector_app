import 'package:flutter/material.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_scaffold.dart';

import 'widgets/signup_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScaffold(
        body: SignUpViewBody(),
      ),
    );
  }
}

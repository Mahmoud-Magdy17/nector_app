import 'package:flutter/material.dart';

import 'widgets/custom_scaffold.dart';
import 'widgets/signin_view_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScaffold(
        body: SigninViewBody(),
      ),
    );
  }
}

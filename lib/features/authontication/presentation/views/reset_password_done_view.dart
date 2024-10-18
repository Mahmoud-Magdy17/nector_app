import 'package:flutter/material.dart';

import 'widgets/reset_password_done_view_body.dart';

class ResetPasswordDoneView extends StatelessWidget {
  const ResetPasswordDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ResetPasswordDoneViewBody(),
      ),
    );
  }
}

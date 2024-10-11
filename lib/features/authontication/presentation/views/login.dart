import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/login_view_body.dart';

import 'widgets/custom_filtered_background.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomFilteredBackground(),
          Image.asset(AppAssets.carrot),
          const LoginViewBody(),
        ],
      ),
    );
  }
}

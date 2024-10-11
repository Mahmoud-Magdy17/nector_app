import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';

import 'widgets/onboarding_view_body.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.onBoardingBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: const Column(
          children: [
            Spacer(),
            OnboardingViewBody(),
          ],
        ),
      ),
    );
  }
}

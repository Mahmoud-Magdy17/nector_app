import 'package:flutter/material.dart';

import 'widgets/onboarding_view_body.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingViewBody()
    );
  }
}

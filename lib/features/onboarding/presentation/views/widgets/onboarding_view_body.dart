import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';

import 'onboarding_view_content.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.onBoardingBackground),
          fit: BoxFit.fill,
        ),
      ),
      child: const Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 2,
            child: OnboardingViewContent(),
          ),
        ],
      ),
    );
  }
}

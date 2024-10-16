import 'package:flutter/material.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_assets.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_functions.dart';
import 'package:nector_app/features/splash/presentation/views/widgets/animated_logo_widget.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplash(
      seconds: 2,
      nextScreen: AppRouter.routes[AppRouter.onBoardingView],
      imgType: ImgType.assetImage,
      image: AppAssets.logoSplash,
      hasIndicator: true,
      indicatorColor: AppColors.offWhite,
      indicatorHeight: 16,
      indicatorAlignment: const Alignment(8, 120),
      backgroundColor: AppColors.primaryColor,
    );
  }
}

void futureNavigation(context) {
  Future.delayed(
    const Duration(seconds: 2),
    () {
      navigationPushReplacement(
        context,
        AppRouter.routes[AppRouter.onBoardingView],
      );
    },
  );
}

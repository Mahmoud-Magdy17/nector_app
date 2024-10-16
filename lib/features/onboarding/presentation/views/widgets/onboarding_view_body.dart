import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_functions.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/core/widgets/custom_button.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            FontAwesomeIcons.carrot,
            color: AppColors.white,
            size: 64,
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.5),
            child: Text(
              AppStrings.welcome,
              textAlign: TextAlign.center,
              style: AppTextStyle.gilroy26px600.copyWith(
                color: AppColors.white,
                fontSize: 48,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            AppStrings.getYourGroceriesFast,
            style: AppTextStyle.gilroy16px500.copyWith(
              color: const Color(0xfffcfcfcb2).withOpacity(0.7),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomButton(
              text: AppStrings.getStarted,
              onPressed: () {
                navigationPushReplacement(
                  context,
                  AppRouter.routes[AppRouter.loginView],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

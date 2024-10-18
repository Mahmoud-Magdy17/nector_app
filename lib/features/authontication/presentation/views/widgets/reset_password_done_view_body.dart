import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';

class ResetPasswordDoneViewBody extends StatelessWidget {
  const ResetPasswordDoneViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.resetPasswordDone,
          width: 220,
        ),
        const SizedBox(
          height: 58,
        ),
        Text(
          AppStrings.congratulations,
          style: AppTextStyle.gilroy28px800,
        ),
        const SizedBox(
          height: 30,
        ),
        Column(
          children: [
            Text(
              AppStrings.yourChagePasswordIsSuccess,
              style: AppTextStyle.gilroy26px600.copyWith(fontSize: 16),
            ),
            Text(
              AppStrings.welcomeToOurApp,
              style: AppTextStyle.gilroy26px600.copyWith(fontSize: 16),
            ),
          ],
        )
      ],
    );
  }
}

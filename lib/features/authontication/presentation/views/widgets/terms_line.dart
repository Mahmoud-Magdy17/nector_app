import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class TermsLine extends StatelessWidget {
  const TermsLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
          text: "By continuing you agree to our ",
          style: AppTextStyle.gilroy16px500.copyWith(
            color: AppColors.grey,
            fontSize: 14,
          ),
        ),
        TextSpan(
          text: "Terms of Service ",
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              // Handle Terms of Service click
              debugPrint("Terms of Service clicked");
            },
          style: AppTextStyle.gilroy16px500.copyWith(
            color: AppColors.primaryColor,
            fontSize: 14,
          ),
        ),
        TextSpan(
          text: "and ",
          style: AppTextStyle.gilroy16px500.copyWith(
            color: AppColors.grey,
            fontSize: 14,
          ),
        ),
        TextSpan(
          text: "Privacy Policy",
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              // Handle Terms of Service click
              debugPrint("Privacy Policy clicked");
            },
          style: AppTextStyle.gilroy16px500.copyWith(
            color: AppColors.primaryColor,
            fontSize: 14,
          ),
        ),
        TextSpan(
          text: ".",
          style: AppTextStyle.gilroy16px500.copyWith(
            color: AppColors.grey,
            fontSize: 14,
          ),
        ),
      ]),
    );
  }
}

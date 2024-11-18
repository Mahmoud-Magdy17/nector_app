
import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomTermsAndConditionsText extends StatelessWidget {
  const CustomTermsAndConditionsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      TextSpan(
        children: [
          TextSpan(
            text: "By placing an order you agree to our ",
            style: AppTextStyle.gilroy28px800.copyWith(
              fontSize: 13,
              color: AppColors.grey,
            ),
          ),
          TextSpan(
            text: "Terms ",
            style: AppTextStyle.gilroy28px800.copyWith(
              fontSize: 13,
            ),
          ),
          TextSpan(
            text: "And ",
            style: AppTextStyle.gilroy28px800.copyWith(
              fontSize: 13,
              color: AppColors.grey,
            ),
          ),
          TextSpan(
            text: "Conditions",
            style: AppTextStyle.gilroy28px800.copyWith(
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';

class OrderDoneViewBodyText extends StatelessWidget {
  const OrderDoneViewBodyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        AppStrings.yourOrderHasBeenAccepted,
        style: AppTextStyle.gilroy28px800.copyWith(fontSize: 28),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        AppStrings.yourItemHasBeenPlacedAnd,
        style: AppTextStyle.gilroy26px600.copyWith(
          fontSize: 16,
          color: AppColors.grey,
        ),
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class OrderMadeViewBodyText extends StatelessWidget {
  const OrderMadeViewBodyText({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        title,
        style: AppTextStyle.gilroy28px800.copyWith(fontSize: 28),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        subTitle,
        style: AppTextStyle.gilroy26px600.copyWith(
          fontSize: 16,
          color: AppColors.grey,
        ),
        textAlign: TextAlign.center,
      ),
    ]);
  }
}

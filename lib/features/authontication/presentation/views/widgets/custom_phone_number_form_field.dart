import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomPhoneNumberFormField extends StatelessWidget {
  const CustomPhoneNumberFormField({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        label,
        style: AppTextStyle.gilroy26px600
            .copyWith(fontSize: 16, color: AppColors.grey),
      ),
    ]);
  }
}

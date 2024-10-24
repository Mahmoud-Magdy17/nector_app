import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';

import 'custom_location_drop_down_menu_button.dart';

class CustomDropDownMenuField extends StatelessWidget {
  const CustomDropDownMenuField({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          AppStrings.yourZone,
          style: AppTextStyle.gilroy26px600.copyWith(
            fontSize: 16,
            color: AppColors.grey,
          ),
        ),
        const CustomLocationDropDownMenuButton(),
      ],
    );
  }
}

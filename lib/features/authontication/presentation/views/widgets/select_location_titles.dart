import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';

class SelectLocationTitles extends StatelessWidget {
  const SelectLocationTitles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.selectYourLocation,
          style: AppTextStyle.gilroy26px600.copyWith(),
        ),
        Text(
          AppStrings
              .swithchOnYourLocationToStayInTuneWithWhatsHappeningInYourArea,
          style: AppTextStyle.gilroy16px500.copyWith(
            color: AppColors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

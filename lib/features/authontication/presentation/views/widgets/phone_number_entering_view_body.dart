import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';

class PhoneNumberEnteringViewBody extends StatelessWidget {
  const PhoneNumberEnteringViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.enterYourMobileNumber,
          style: AppTextStyle.gilroy26px600,
        ),
      ],
    );
  }
}

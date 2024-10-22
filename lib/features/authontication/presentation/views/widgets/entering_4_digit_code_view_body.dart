import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_email_form_field.dart';

class Entering4DigitCodeViewBody extends StatelessWidget {
  const Entering4DigitCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              AppStrings.enterYour4DigitNumber,
              style: AppTextStyle.gilroy26px600.copyWith(fontSize: 24),
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomEmailFormField(
              label: AppStrings.code,
              hint: "----",
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                AppStrings.resendCode,
                style: AppTextStyle.gilroy16px500.copyWith(
                  fontSize: 18,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

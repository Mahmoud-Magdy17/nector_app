import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/core/widgets/custom_text_button.dart';

import 'connect_with_other_social_media.dart';

class SignupDataCollectMethodViewBody extends StatelessWidget {
  const SignupDataCollectMethodViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              AppStrings.getYourGroceriesWithNectar,
              style: AppTextStyle.gilroy26px600.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextButton(
              text: "use phone number",
              onPressed: () {},
              color: AppColors.grey,
            ),
            const SizedBox(
              height: 30,
            ),
            const ConnectWithOtherSocialMedia()
          ],
        ),
      ),
    );
  }
}

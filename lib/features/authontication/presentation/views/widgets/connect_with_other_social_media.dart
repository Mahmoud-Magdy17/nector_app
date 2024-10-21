import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/core/widgets/custom_icon_button.dart';

class ConnectWithOtherSocialMedia extends StatelessWidget {
  const ConnectWithOtherSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.orConnectWithSocialMedia,
          style: AppTextStyle.gilroy26px600.copyWith(
            color: AppColors.grey,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        CustomIconButton(
          text: AppStrings.continueWithGoogle,
          onPressed: () {},
          color: const Color(0xff5383EC),
          icon: const Icon(
            Icons.g_mobiledata_outlined,
            color: AppColors.white,
            size: 40,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        CustomIconButton(
          text: AppStrings.continueWithFacebook,
          onPressed: () {},
          color: const Color(0xff4A66AC),
          icon: const Icon(
            Icons.facebook,
            color: AppColors.white,
            size: 40,
          ),
        ),
      ],
    );
  }
}

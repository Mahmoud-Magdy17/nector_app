import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/widgets/custom_text_with_icon_button.dart';

import 'account_details_section.dart';
import 'account_view_action_section.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AccountDetailsSection(),
        const AccountViewActionsSection(),
        const Divider(
          color: AppColors.grey,
          thickness: 1,
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 25,left: 16,right: 16),
          child: CustomTextWithIconButton(
            text: "Sign Out",
            onPressed: () {},
            icon: const Icon(
              Icons.logout_outlined,
            ),
            color: AppColors.offWhite,
            textColor: AppColors.primaryColor,
            centerText: true,
          ),
        ),
      ],
    );
  }
}

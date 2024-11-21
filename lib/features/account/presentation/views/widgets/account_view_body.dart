import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';

import 'account_details_section.dart';
import 'account_view_action_section.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AccountDetailsSection(),
        AccountViewActionsSection(),
        Divider(
          color: AppColors.grey,
          thickness: 1,
        )
      ],
    );
  }
}

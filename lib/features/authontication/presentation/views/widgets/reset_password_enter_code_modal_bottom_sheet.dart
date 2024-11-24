import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/core/widgets/custom_text_button.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/code_field.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_reset_password_buttom.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/reset_password_new_email_bottom_sheet.dart';

class ResetPasswordEnterCodeModalBottomSheet extends StatelessWidget {
  const ResetPasswordEnterCodeModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomResetPasswordBottomSheet(
      title: AppStrings.resetPassword,
      subTitle: AppStrings.enterTheCodeTha,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.enterThe6Dig,
            style: AppTextStyle.gilroy26px600.copyWith(
              color: AppColors.grey,
              fontSize: 20,
            ),
          ),
          const CodeField(),
          const SizedBox(
            height: 64,
          ),
          CustomTextButton(
            text: AppStrings.sendCode,
            onPressed: () {
              Navigator.pop(context);
              showModalBottomSheet(
                context: context,
                builder: (contend) {
                  return const ResetPasswordNewEmailBottomSheet();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

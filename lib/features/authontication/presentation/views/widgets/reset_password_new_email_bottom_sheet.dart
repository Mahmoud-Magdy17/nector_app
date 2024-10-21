import 'package:flutter/material.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_functions.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/widgets/custom_text_button.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_email_form_field.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_password_form_field.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_reset_password_buttom.dart';

class ResetPasswordNewEmailBottomSheet extends StatelessWidget {
  const ResetPasswordNewEmailBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomResetPasswordBottomSheet(
      height: 660,
      title: AppStrings.resetPassword,
      subTitle: AppStrings.enterNewPassword,
      child: Column(
        children: [
          const CustomEmailFormField(
            label: AppStrings.email,
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomPasswordFormField(
            label: AppStrings.password,
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomPasswordFormField(
            label: AppStrings.confirmPassword,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextButton(
            text: AppStrings.resetPassword,
            onPressed: () {
              Navigator.pop(context);
              navigationPushReplacement(
                  context, AppRouter.routes[AppRouter.resetPasswordDoneView]);
            },
          )
        ],
      ),
    );
  }
}

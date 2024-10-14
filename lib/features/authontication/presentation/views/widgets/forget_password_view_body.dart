import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/widgets/custom_button.dart';

import 'authontication_view_header.dart';
import 'custom_email_form_field.dart';
import 'reset_password_modal_bottom_sheet.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          const AuthonticationViewsHeader(
            title: AppStrings.forgetPassword,
            subTitle: AppStrings.enterYourEmailForVer,
          ),
          const SizedBox(
            height: 44,
          ),
          const CustomEmailFormField(label: AppStrings.email),
          const SizedBox(
            height: 63,
          ),
          CustomButton(
              text: AppStrings.continuE,
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const ResetPasswordModalBottomSheet();
                  },
                );
              })
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_functions.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {
            navigationPush(
              context,
              AppRouter.routes[AppRouter.forgetPasswordView],
            );
          },
          child: Text(
            AppStrings.forgetPassword,
            style: AppTextStyle.gilroy26px600.copyWith(fontSize: 14),
          ),
        ),
      ],
    );
  }
}

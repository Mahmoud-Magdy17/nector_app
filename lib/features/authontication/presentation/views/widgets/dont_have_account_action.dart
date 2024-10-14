import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';

class DontHaveAcountAction extends StatelessWidget {
  const DontHaveAcountAction({
    super.key,
    required this.action,
    required this.onPressed,
  });
  final String action;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.dontHaveAnAccount,
          style: AppTextStyle.gilroy26px600.copyWith(
            fontSize: 14,
          ),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              action,
              style: AppTextStyle.gilroy26px600.copyWith(
                fontSize: 14,
                color: AppColors.primaryColor,
              ),
            )),
      ],
    );
  }
}

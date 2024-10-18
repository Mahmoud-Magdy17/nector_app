import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class OtherAuthenticationActoins extends StatelessWidget {
  const OtherAuthenticationActoins({
    super.key,
    required this.text,
    required this.action,
    required this.onPressed,
  });
  final String text;
  final String action;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
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
          ),
        ),
      ],
    );
  }
}

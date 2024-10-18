
import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomResetPasswordBottomSheet extends StatelessWidget {
  const CustomResetPasswordBottomSheet({
    super.key,
    required this.child,
    required this.title,
    required this.subTitle,
    this.height,
  });
  final Widget child;
  final String title;
  final String subTitle;
  final double? height;
  
  @override
  Widget build(BuildContext context) {
  print(height??1.toInt());
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: EdgeInsets.only(
        top: 24,
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 4,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      height: height ?? 440,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyle.gilroy26px600,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              subTitle,
              style: AppTextStyle.gilroy14px400.copyWith(
                color: AppColors.grey,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            child
          ],
        ),
      ),
    );
  }
}

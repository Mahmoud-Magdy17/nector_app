import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.padding,
    required this.text,
    required this.onPressed,
  });
  final Function() onPressed;
  final double padding;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          fixedSize: const Size(double.maxFinite, 67),
        ),
        child: Text(
          text,
          style: AppTextStyle.gilroy26px600.copyWith(
            fontSize: 18,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}

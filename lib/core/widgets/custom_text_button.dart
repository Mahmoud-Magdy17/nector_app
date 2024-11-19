import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = AppColors.primaryColor,
    this.textColor = AppColors.white,
  });
  final Color color;
  final Function() onPressed;
  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
          backgroundColor: color,
          fixedSize: const Size(double.maxFinite, 67),
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        child: Text(
          text,
          style: AppTextStyle.gilroy26px600.copyWith(
            fontSize: 18,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

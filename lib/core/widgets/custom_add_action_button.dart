import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.onPressed,
    this.backgroundColor = AppColors.primaryColor,
    this.foregroundColor = AppColors.white,
    this.borderColor = Colors.transparent,
    required this.icon,
  });
  final Function() onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color borderColor;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: borderColor),
        ),
      ),
      icon: Icon(
        icon,
        size: 32,
      ),
    );
  }
}

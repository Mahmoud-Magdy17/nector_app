import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomTextWithIconButton extends StatelessWidget {
  const CustomTextWithIconButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = AppColors.primaryColor,
    required this.icon,
    this.textColor = AppColors.white,
    this.centerText = false,
  });
  final Icon icon;
  final Color color;
  final Function() onPressed;
  final String text;
  final Color textColor;
  final bool centerText;
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
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: icon,
            ),
            Expanded(
              flex: 5,
              child: Text(
                textAlign: centerText?TextAlign.center:TextAlign.start,
                text,
                style: AppTextStyle.gilroy26px600.copyWith(
                  fontSize: 18,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

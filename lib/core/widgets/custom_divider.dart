import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.noIndent = false,
    this.color = AppColors.offWhite,
  });
  final bool noIndent;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      thickness: 1,
      indent: noIndent ? 0 : 25,
      endIndent: noIndent ? 0 : 25,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.noIndent = false,
  });
  final bool noIndent;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.offWhite,
      thickness: 1,
      indent: noIndent ? 0 : 25,
      endIndent: noIndent ? 0 : 25,
    );
  }
}

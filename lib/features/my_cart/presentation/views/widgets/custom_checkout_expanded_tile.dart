import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/core/widgets/custom_expanded_tite.dart';

class CustomCheckoutExpandedTile extends StatelessWidget {
  const CustomCheckoutExpandedTile({
    super.key,
    required this.text,
    this.labelString,
    required this.content,
    this.labelIcon,
  });
  final String text;
  final String? labelString;
  final IconData? labelIcon;
  final Widget content;
  @override
  Widget build(BuildContext context) {
    return CustomExpandedTile(
      title: Text(
        text,
        style: AppTextStyle.gilroy28px800.copyWith(
          fontSize: 16,
          color: AppColors.grey,
        ),
      ),
      label: labelString != null
          ? Text(
              labelString!,
              style: AppTextStyle.gilroy28px800.copyWith(
                fontSize: 16,
              ),
            )
          : Icon(
              labelIcon,
            ),
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                "data",
                textAlign: TextAlign.start,
              ),
            ],
          ),
        )
      ],
    );
  }
}

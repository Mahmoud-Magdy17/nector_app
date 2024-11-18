
import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';

class ExpandedListTileLabel extends StatelessWidget {
  const ExpandedListTileLabel({
    super.key,
    required this.label,
    required this.curState,
  });
  final Widget? label;
  final int curState;
  @override
  Widget build(BuildContext context) {
    if (label is Icon) {
      return Icon(
        (label as Icon).icon,
        color: curState == 0 ? AppColors.grey : AppColors.primaryColor,
      );
    }

    // Check if label is a Text
    if (label is Text) {
      return Text(
        (label as Text).data!,
        style: (label as Text).style!.copyWith(
              color: curState == 0 ? AppColors.grey : AppColors.primaryColor,
            ),
      );
    }

    // Return the widget if it is neither Icon nor Text (default behavior)
    return label??const SizedBox();
  }
}

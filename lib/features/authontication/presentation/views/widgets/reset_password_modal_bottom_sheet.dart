import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';

class ResetPasswordModalBottomSheet extends StatelessWidget {
  const ResetPasswordModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.only(top: 66, left: 16, right: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      height: 400,
      width: double.infinity,
      child: const Text("hiehe"),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';

class CustomAddActionButton extends StatelessWidget {
  const CustomAddActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      style: IconButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      icon: const Icon(
        Icons.add,
        size: 32,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';

import 'custom_text_field.dart';

class CustomDecoratedSearchTextField extends StatelessWidget {
  const CustomDecoratedSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
      width: double.infinity,
      height: 70,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.offWhite,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const SearchTextField(),
      ),
    );
  }
}

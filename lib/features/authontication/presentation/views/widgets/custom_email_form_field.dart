import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomEmailFormField extends StatelessWidget {
  const CustomEmailFormField({
    super.key,
    required this.label,
    this.hint = "",
  });
  final String label;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTextStyle.gilroy26px600
                .copyWith(fontSize: 16, color: AppColors.grey),
          ),
          TextFormField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.grey.withOpacity(0.4))),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.grey.withOpacity(0.4))),
              hintText: hint,
              hintStyle: AppTextStyle.gilroy26px600
                  .copyWith(fontSize: 16, color: AppColors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

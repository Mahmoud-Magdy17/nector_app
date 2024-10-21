import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomPasswordFormField extends StatelessWidget {
  const CustomPasswordFormField({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyle.gilroy26px600
              .copyWith(fontSize: 16, color: AppColors.grey),
        ),
        TextFormField(
          obscureText: true,
          autocorrect: false,
          enableSuggestions: false,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey.withOpacity(0.4))),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey.withOpacity(0.4))),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.eye),
            ),
          ),
        ),
      ],
    );
  }
}

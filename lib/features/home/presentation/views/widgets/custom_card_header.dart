
import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomTiltedListViewHeader extends StatelessWidget {
  const CustomTiltedListViewHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.gilroy28px800.copyWith(fontSize: 20),
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(
              0,
            ),
          ),
          onPressed: () {},
          child: Text(
            "See all",
            style: AppTextStyle.gilroy26px600.copyWith(fontSize: 16),
          ),
        ),
      ],
    );
  }
}

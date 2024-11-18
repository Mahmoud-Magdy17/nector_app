import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomFavoriteItemCenterSection extends StatelessWidget {
  const CustomFavoriteItemCenterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Sprite Can",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.gilroy28px800.copyWith(
            fontSize: 18,
          ),
        ),
        Text(
          '1kg, Price',
          style: AppTextStyle.gilroy26px600.copyWith(
            fontSize: 12,
            color: AppColors.grey,
          ),
          maxLines: 1,
          overflow: TextOverflow.fade,
        ),
      ],
    );
  }
}

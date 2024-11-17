import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

import 'cart_item_counting_number.dart';

class CustomCartItemCenterSection extends StatelessWidget {
  const CustomCartItemCenterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bell Pepper Red",
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
        Spacer(),
        CartItemCountingNumber(),
      ],
    );
  }
}

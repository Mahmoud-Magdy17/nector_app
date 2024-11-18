import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_style.dart';

import 'custom_cart_icon_button.dart';

class CustomFavoriteItemRightSection extends StatelessWidget {
  const CustomFavoriteItemRightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "\$3.00",
          style: AppTextStyle.gilroy28px800.copyWith(fontSize: 18),
        ),
        const SizedBox(
          width: 8,
        ),
        const CustomCartIconButton(),
      ],
    );
  }
}

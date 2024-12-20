
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Naturel Red Apple',
              style: AppTextStyle.gilroy28px800.copyWith(
                fontSize: 20,
              ),
            ),
            Text(
              '1kg, Price',
              style: AppTextStyle.gilroy16px500
                  .copyWith(color: AppColors.grey, fontSize: 18),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.heart),
          padding: const EdgeInsets.all(0),
        )
      ],
    );
  }
}

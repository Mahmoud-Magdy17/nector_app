
import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class UsernameAndEmailLabel extends StatelessWidget {
  const UsernameAndEmailLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Afsar Hossen',
              style: AppTextStyle.gilroy28px800.copyWith(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            const InkWell(
              child: Icon(
                Icons.edit_outlined,
                color: AppColors.primaryColor,
                size: 24,
              ),
            )
          ],
        ),
        Text(
          'Imshuvo97@gmail.com',
          style: AppTextStyle.gilroy16px500.copyWith(
            color: AppColors.grey,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}

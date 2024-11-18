import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_functions.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomCartItemRightSection extends StatelessWidget {
  const CustomCartItemRightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
            onTap: () {
              customShowToast(msg: "Element removed from cart");
            },
            child: const Icon(
              Icons.close,
              size: 32,
              color: AppColors.grey,
            )),
        const Spacer(),
        Text(
          "\$3.00",
          style: AppTextStyle.gilroy28px800.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}

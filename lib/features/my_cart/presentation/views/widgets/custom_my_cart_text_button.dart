import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/core/widgets/custom_text_button.dart';

class CustomMyCartTextButton extends StatelessWidget {
  const CustomMyCartTextButton({
    super.key,
    required this.onPressed,
    this.color = AppColors.primaryColor,
    required this.totalPrice,
  });
  final Color color;
  final Function() onPressed;
  final String totalPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Stack(
        children: [
          CustomTextButton(text: 'Go To Checkout', onPressed: onPressed),
          Positioned(
            right: 16,
            top: 56 / 3,
            child: Container(
              padding: const EdgeInsets.all(2),
              alignment: Alignment.center,
              height: 56 / 3,
              decoration: const BoxDecoration(color: Color(0xff489E67)),
              child: Text(
                "\$12.96",
                style: AppTextStyle.gilroy26px600
                    .copyWith(color: AppColors.white, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

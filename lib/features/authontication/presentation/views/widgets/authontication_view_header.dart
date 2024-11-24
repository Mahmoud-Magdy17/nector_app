import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

import 'authontication_view_header_image.dart';

class AuthonticationViewsHeader extends StatelessWidget {
  const AuthonticationViewsHeader({
    super.key,
    required this.title,
    required this.subTitle,
    this.haveImage = true,
  });
  final String title;
  final String subTitle;
  final bool haveImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          haveImage ? const AuthonticationViewHeaderImage() : const SizedBox(),
          Text(
            title,
            style: AppTextStyle.gilroy26px600
                .copyWith(color: const Color(0xff181725)),
          ),
          Text(
            subTitle,
            style: AppTextStyle.gilroy16px500.copyWith(
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

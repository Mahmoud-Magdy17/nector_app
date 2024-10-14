import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';

class AuthonticationViewsHeader extends StatelessWidget {
  const AuthonticationViewsHeader({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 60, bottom: 70),
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            AppAssets.carrot,
            scale: 3.5,
          ),
        ),
        Text(
          AppStrings.loging,
          style: AppTextStyle.gilroy26px600
              .copyWith(color: const Color(0xff181725)),
        ),
        Text(
          AppStrings.enterYourEmailAndPassword,
          style: AppTextStyle.gilroy16px500.copyWith(
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}

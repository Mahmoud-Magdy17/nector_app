import 'package:flutter/material.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_functions.dart';

class CustomCartIconButton extends StatelessWidget {
  const CustomCartIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.offWhite,
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        navigationPush(context, AppRouter.routes[AppRouter.productDetailsView]);
      },
      child: const Icon(
        Icons.chevron_right_outlined,
        size: 48,
      ),
    );
  }
}

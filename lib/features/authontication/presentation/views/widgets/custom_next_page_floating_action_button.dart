
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_functions.dart';

class CustomNextPageFloatingActionButton extends StatelessWidget {
  const CustomNextPageFloatingActionButton({
    super.key,
    required this.nextPageId,
  });
  final String nextPageId;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigationPush(
          context,
          AppRouter.routes[nextPageId],
        );
      },
      child: const CircleAvatar(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.white,
        radius: 32,
        child: Icon(
          FontAwesomeIcons.angleRight,
        ),
      ),
    );
  }
}

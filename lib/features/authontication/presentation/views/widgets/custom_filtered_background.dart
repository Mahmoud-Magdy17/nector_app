import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';
import 'package:nector_app/core/utils/app_colors.dart';

class CustomFilteredBackground extends StatelessWidget {
  const CustomFilteredBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.backGround,
          ),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 32.0, sigmaY: 32.0),
        child: Container(
          color: AppColors.white.withOpacity(0.5),
        ),
      ),
    );
  }
}

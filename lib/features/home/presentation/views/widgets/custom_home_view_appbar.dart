import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';

class CustomMainHomeViewAppBar extends StatelessWidget {
  const CustomMainHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:  20.0),
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.carrot,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.body,
  });
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.backGround),
          fit: BoxFit.fill,
        ),
      ),
      child: body,
    );
  }
}

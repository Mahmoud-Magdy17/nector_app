
import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';

class AuthonticationViewHeaderImage extends StatelessWidget {
  const AuthonticationViewHeaderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only( bottom: 70),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        AppAssets.carrot,
        scale: 3.5,
      ),
    );
  }
}

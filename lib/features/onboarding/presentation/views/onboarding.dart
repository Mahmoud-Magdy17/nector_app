import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nector_app/core/utils/app_assets.dart';
import 'package:nector_app/core/utils/app_strings.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.onBoardingBackground),fit: BoxFit.fill)),
        child: Column(
          children: [
            Spacer(),
            Expanded(
                child: Column(
              children: [
                Icon(
                  FontAwesomeIcons.carrot,
                ),
                Text(AppStrings.welcome),
                Text(AppStrings.getYourGroceriesFast),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

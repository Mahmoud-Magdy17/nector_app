import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.gilroy28px800.copyWith(fontSize: 20),
    );
  }
}

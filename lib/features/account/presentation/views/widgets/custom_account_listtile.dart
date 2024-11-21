import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomAccountViewListTile extends StatelessWidget {
  const CustomAccountViewListTile({
    super.key,
    required this.leading,
    required this.title,
  });
  final IconData leading;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        leading,
        size: 32,
      ),
      title: Text(
        title,
        style: AppTextStyle.gilroy28px800.copyWith(fontSize: 20),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
      ),
    );
  }
}

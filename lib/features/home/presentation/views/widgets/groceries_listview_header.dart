import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_style.dart';

class GroceriesListViewHeader extends StatelessWidget {
  const GroceriesListViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Groceries",
            style: AppTextStyle.gilroy26px600.copyWith(
              fontSize: 24,
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(
                0,
              ),
            ),
            child: const Text('See All'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/features/explore/data/enums/filters_enum.dart';

import 'custom_check_box_item.dart';

class CategoriesSectionFilters extends StatelessWidget {
  const CategoriesSectionFilters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            "Categories",
            style: AppTextStyle.gilroy28px800.copyWith(),
          ),
        ),
        const CustomCheckBoxItem(
          title: 'Eggs',
          filter: FilterType.eggs,
        ),
        const CustomCheckBoxItem(
          title: 'Noodles & Pasta',
          filter: FilterType.noodlesAndPasta,
        ),
        const CustomCheckBoxItem(
          title: 'Chips & Crisps',
          filter: FilterType.chipsAndCrisps,
        ),
        const CustomCheckBoxItem(
          title: 'Fast Food',
          filter: FilterType.fastFood,
        ),
      ],
    );
  }
}

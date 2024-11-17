import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/features/explore/data/enums/filters_enum.dart';

import 'custom_check_box_item.dart';

class BrandSectionFilters extends StatelessWidget {
  const BrandSectionFilters({
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
            "Brand",
            style: AppTextStyle.gilroy28px800.copyWith(),
          ),
        ),
        const CustomCheckBoxItem(
          title: 'Individual Callection',
          filter: FilterType.individualCallection,
        ),
        const CustomCheckBoxItem(
          title: 'Cocola',
          filter: FilterType.cocola,
        ),
        const CustomCheckBoxItem(
          title: 'Ifad',
          filter: FilterType.ifad,
        ),
        const CustomCheckBoxItem(
          title: 'Kazi Farmas',
          filter: FilterType.kaziFarmas,
        ),
      ],
    );
  }
}

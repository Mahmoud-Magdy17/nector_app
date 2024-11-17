import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/widgets/custom_text_button.dart';

import 'brand_section_filters.dart';
import 'categories_section_filters.dart';

class FiltersViewBody extends StatelessWidget {
  const FiltersViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 26),
        decoration: const BoxDecoration(
          color: AppColors.offWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          )
        ),
        child: Column(
          children: [
            const CategoriesSectionFilters(),
            const SizedBox(
              height: 32,
            ),
            const BrandSectionFilters(),
            const Spacer(),
            CustomTextButton(text: 'Apply Filter', onPressed: () {
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }
}

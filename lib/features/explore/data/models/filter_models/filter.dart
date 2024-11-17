import 'package:nector_app/features/explore/data/models/filter_models/category_filter.dart';

import '../../enums/filters_enum.dart';
import 'brand_filter.dart';

class Filter {
  BrandFilter brandFilters = BrandFilter();
  CategoryFilter categoryFilters = CategoryFilter();
  void checkFilter(FilterType filter) {
    switch (filter) {
      case FilterType.eggs:
        categoryFilters.eggs = !categoryFilters.eggs;
        break;
      case FilterType.noodlesAndPasta:
        categoryFilters.noodlesAndPasta = !categoryFilters.noodlesAndPasta;
        break;
      case FilterType.chipsAndCrisps:
        categoryFilters.chipsAndCrisps = !categoryFilters.chipsAndCrisps;
        break;
      case FilterType.fastFood:
        categoryFilters.fastFood = !categoryFilters.fastFood;
        break;
      case FilterType.individualCallection:
        brandFilters.individualCallection = !brandFilters.individualCallection;
        break;
      case FilterType.cocola:
        brandFilters.cocola = !brandFilters.cocola;
        break;
      case FilterType.ifad:
        brandFilters.ifad = !brandFilters.ifad;
        break;
      case FilterType.kaziFarmas:
        brandFilters.kaziFarmas = !brandFilters.kaziFarmas;
        break;
    }
  }

  bool getFilter(FilterType filter) {
    switch (filter) {
      case FilterType.eggs:
        return categoryFilters.eggs;

      case FilterType.noodlesAndPasta:
        return categoryFilters.noodlesAndPasta;
      case FilterType.chipsAndCrisps:
        return categoryFilters.chipsAndCrisps;
      case FilterType.fastFood:
        return categoryFilters.fastFood;
      case FilterType.individualCallection:
        return brandFilters.individualCallection;
      case FilterType.cocola:
        return brandFilters.cocola;
      case FilterType.ifad:
        return brandFilters.ifad;
      case FilterType.kaziFarmas:
        return brandFilters.kaziFarmas;
    }
  }
}

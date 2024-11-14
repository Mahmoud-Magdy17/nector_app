
import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_style.dart';

import '../../../../../core/widgets/custom_decorated_search_text_field.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      surfaceTintColor: Colors.transparent,
      titleTextStyle: AppTextStyle.gilroy16px500.copyWith(color: Colors.black),
      pinned: true,
      floating: false,
      centerTitle: true,
      expandedHeight: 32.0,
      title: const CustomDecoratedSearchTextField(),
    );
  }
}
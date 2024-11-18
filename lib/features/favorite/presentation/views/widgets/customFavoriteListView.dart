
import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_divider.dart';

import 'custom_favorite_item.dart';

class CustomFavoriteListview extends StatelessWidget {
  const CustomFavoriteListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 6,
        itemBuilder: (context, index) {
          return const CustomFavoriteItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const CustomDivider();
        },
      ),
    );
  }
}

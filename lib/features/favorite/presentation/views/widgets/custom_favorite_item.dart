import 'package:flutter/material.dart';

import 'custom_favorite_item_center_section.dart';
import 'custom_favorite_item_right_section.dart';

class CustomFavoriteItem extends StatelessWidget {
  const CustomFavoriteItem({super.key});

  final String image =
      'https://cdn-icons-png.flaticon.com/128/2276/2276931.png';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6.5,
      // color: Colors.amber,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Image.network(image),
          const SizedBox(width: 32),
          const CustomFavoriteItemCenterSection(),
          const Spacer(),
          const CustomFavoriteItemRightSection()
        ],
      ),
    );
  }
}

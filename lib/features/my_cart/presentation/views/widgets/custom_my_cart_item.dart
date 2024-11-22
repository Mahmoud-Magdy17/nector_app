import 'package:flutter/material.dart';

import 'custom_cart_item_center_section.dart';
import 'custom_cart_item_right_sectino.dart';

class CustomMyCartItem extends StatelessWidget {
  const CustomMyCartItem({
    super.key,
  });
  final String image =
      'https://cdn-icons-png.flaticon.com/128/2276/2276931.png';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5.8,
      // color: Colors.amber,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Image.network(image),
          const SizedBox(width: 32),
          const CustomCartItemCenterSection(),
          const Spacer(),
          const CustomCartItemRightSection()
        ],
      ),
    );
  }
}

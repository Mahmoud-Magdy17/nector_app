import 'package:flutter/material.dart';

import 'custom_cart_item_center_section.dart';
import 'custom_cart_item_right_sectino.dart';

class CustomMyCartItem extends StatelessWidget {
  const CustomMyCartItem({
    super.key,
  });
  final String image =
      'https://th.bing.com/th/id/OIP.UYagQDMo7CCbBLXOPB5etAHaHa?rs=1&pid=ImgDetMain';
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

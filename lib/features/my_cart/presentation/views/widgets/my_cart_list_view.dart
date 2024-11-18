import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_divider.dart';

import 'custom_my_cart_item.dart';

class MyCartListView extends StatelessWidget {
  const MyCartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 6,
        itemBuilder: (context, index) {
          return const CustomMyCartItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const CustomDivider();
        },
      ),
    );
  }
}

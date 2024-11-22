
import 'package:flutter/material.dart';

import 'groceries_item_card.dart';

class GroceriesListView extends StatelessWidget {
  const GroceriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          GroceriesItemCard(),
          SizedBox(width: 16),
          GroceriesItemCard(),
          SizedBox(width: 16),
          GroceriesItemCard(),
          SizedBox(width: 16),
          GroceriesItemCard(),
          SizedBox(width: 16),
          GroceriesItemCard(),
        ],
      ),
    );
  }
}

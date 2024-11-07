
import 'package:flutter/material.dart';

import 'custom_element_card.dart';
import 'custom_titled_listview.dart';

class BestSellingSection extends StatelessWidget {
  const BestSellingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: CustomTitledListView(
        title: "Best Selling",
        cards: [
          CustomElementCard(),
          CustomElementCard(),
          CustomElementCard(),
          CustomElementCard(),
          CustomElementCard(),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

import 'custom_element_card.dart';
import 'custom_titled_listview.dart';

class ExclusiveOffersSection extends StatelessWidget {
  const ExclusiveOffersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: CustomTitledListView(
        title: "Exclusive Offer",
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

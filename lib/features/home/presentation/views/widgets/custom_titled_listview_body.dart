
import 'package:flutter/material.dart';

import 'custom_element_card.dart';

class CustomTitledListViewBody extends StatelessWidget {
  const CustomTitledListViewBody({
    super.key,
    required this.cards,
  });

  final List<CustomElementCard> cards;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return cards[index];
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 16,
          );
        },
      ),
    );
  }
}

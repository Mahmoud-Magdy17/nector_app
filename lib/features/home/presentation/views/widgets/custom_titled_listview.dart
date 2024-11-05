import 'package:flutter/material.dart';
import 'package:nector_app/features/home/presentation/views/widgets/custom_card_header.dart';

import 'custom_element_card.dart';
import 'custom_titled_listview_body.dart';

class CustomTitledListView extends StatelessWidget {
  const CustomTitledListView({
    super.key,
    required this.title,
    required this.cards,
  });
  final String title;
  final List<CustomElementCard> cards;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.65,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: CustomTiltedListViewHeader(title: title),
          ),
          Expanded(
            child: CustomTitledListViewBody(cards: cards),
          ),
        ],
      ),
    );
  }
}

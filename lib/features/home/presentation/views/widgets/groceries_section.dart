import 'package:flutter/material.dart';

import 'custom_element_card.dart';
import 'custom_titled_listview_body.dart';
import 'groceries_listview_body.dart';
import 'groceries_listview_header.dart';

class GroceriesSection extends StatelessWidget {
  const GroceriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: Column(
        children: [
          GroceriesListViewHeader(), //32
          SizedBox(
            height: 16,
          ),
          GroceriesListView(),
          SizedBox(
            height: 8,
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height / 3.2,
            child: CustomTitledListViewBody(
              cards: [
                CustomElementCard(),
                CustomElementCard(),
                CustomElementCard(),
                CustomElementCard(),
                CustomElementCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

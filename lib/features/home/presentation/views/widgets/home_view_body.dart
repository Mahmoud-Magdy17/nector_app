import 'package:flutter/material.dart';

import 'best_selling_section.dart';
import 'custom_home_view_appbar.dart';
import 'custom_slider.dart';
import 'custom_sliver_appbar.dart';
import 'custom_sliver_sized_box.dart';
import 'exclusive_offers_section.dart';
import 'groceries_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomMainHomeViewAppBar(),
          ),
          CustomSliverAppBar(),
          CustomSliverSizedBox(
            height: 8,
          ),
          SliverToBoxAdapter(
            child: CustomSlider(),
          ),
          CustomSliverSizedBox(height: 30),
          ExclusiveOffersSection(),
          CustomSliverSizedBox(height: 30),
          BestSellingSection(),
          CustomSliverSizedBox(height: 30),
          GroceriesSection(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';

import 'best_selling_section.dart';
import '../../../../../core/widgets/custom_appbar.dart';
import 'custom_slider.dart';
import 'custom_sliver_appbar.dart';
import 'custom_sliver_sized_box.dart';
import 'exclusive_offers_section.dart';
import 'groceries_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomAppBar(
              child: Image.asset(
                AppAssets.carrot,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const CustomSliverAppBar(),
          const CustomSliverSizedBox(
            height: 8,
          ),
          const SliverToBoxAdapter(
            child: CustomSlider(),
          ),
          const CustomSliverSizedBox(height: 30),
          const ExclusiveOffersSection(),
          const CustomSliverSizedBox(height: 30),
          const BestSellingSection(),
          const CustomSliverSizedBox(height: 30),
          const GroceriesSection(),
        ],
      ),
    );
  }
}

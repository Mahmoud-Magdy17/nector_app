import 'package:flutter/material.dart';

import 'custom_element_card.dart';
import 'custom_home_view_appbar.dart';
import 'custom_slider.dart';
import 'custom_sliver_appbar.dart';
import 'custom_sliver_sized_box.dart';
import 'custom_titled_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: CustomMainHomeViewAppBar(),
        ),
        const CustomSliverAppBar(),
        const CustomSliverSizedBox(
          height: 8,
        ),
        const SliverToBoxAdapter(
          child: CustomSlider(),
        ),
        const CustomSliverSizedBox(height: 30),
        const SliverToBoxAdapter(
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
        ),
        const CustomSliverSizedBox(height: 30),
        const SliverToBoxAdapter(
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
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                leading: const Icon(Icons.list),
                title: Text('Item $index'),
              );
            },
            childCount: 50,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'custom_home_view_appbar.dart';
import 'custom_slider.dart';
import 'custom_sliver_appbar.dart';

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
        const SliverToBoxAdapter(
          child: CustomSlider(),
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


import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_appbar.dart';
import 'package:nector_app/core/widgets/custom_appbar_title.dart';
import 'package:nector_app/features/home/presentation/views/widgets/custom_sliver_appbar.dart';

import 'caterory_grid_item.dart';
import '../../../../../core/widgets/custom_sliver_grid.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBar(
            child: CustomAppBarTitle(title: "Find Product"),
          ),
        ),
        CustomSliverAppBar(),
        CustomSliverGrid(
          children: [
            CateroyGridItem(),
            CateroyGridItem(),
            CateroyGridItem(),
            CateroyGridItem(),
            CateroyGridItem(),
          ],
        )
      ],
    );
  }
}

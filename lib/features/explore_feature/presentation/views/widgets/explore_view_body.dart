import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/core/widgets/custom_appbar.dart';
import 'package:nector_app/features/home/presentation/views/widgets/custom_sliver_appbar.dart';

import 'caterory_grid_item.dart';
import '../../../../../core/widgets/custom_sliver_grid.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBar(
            child: Text(
              "Find Product",
              style: AppTextStyle.gilroy28px800.copyWith(fontSize: 20),
            ),
          ),
        ),
        const CustomSliverAppBar(),
        const CustomSliverGrid(
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

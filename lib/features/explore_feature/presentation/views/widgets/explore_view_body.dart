import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_decorated_search_text_field.dart';
import 'package:nector_app/features/explore_feature/presentation/views/widgets/Caterory_item.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDecoratedSearchTextField(),
        Expanded(
          child: GridView.count(
            childAspectRatio: 2.5 / 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            crossAxisCount: 2,
            children: [
              CateroyItem(),
              CateroyItem(),
              CateroyItem(),
              CateroyItem(),
              CateroyItem(),
            ],
          ),
        )
      ],
    );
  }
}

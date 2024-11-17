import 'package:flutter/material.dart';

import 'widgets/explore_view_body.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:  8.0),
        child: ExploreViewBody(),
      ),
    );
  }
}

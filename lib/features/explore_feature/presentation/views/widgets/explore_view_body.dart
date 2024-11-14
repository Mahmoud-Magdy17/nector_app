
import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_decorated_search_text_field.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomDecoratedSearchTextField(),
      ],
    );
  }
}

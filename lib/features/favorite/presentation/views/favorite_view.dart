import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_appbar.dart';
import 'package:nector_app/core/widgets/custom_appbar_title.dart';
import 'package:nector_app/core/widgets/custom_divider.dart';

import 'widgets/my_favorite_view_body.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomAppBar(
            child: CustomAppBarTitle(title: 'My Favorite'),
          ),
          CustomDivider(noIndent: true),
          Expanded(child: FavoriteViewBody()),
        ],
      ),
    );
  }
}

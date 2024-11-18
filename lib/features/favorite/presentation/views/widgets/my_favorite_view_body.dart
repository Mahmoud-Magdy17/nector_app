import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_text_button.dart';

import 'customFavoriteListView.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomFavoriteListview(),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomTextButton(
            text: 'Add All To Cart',
            onPressed: () {},
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

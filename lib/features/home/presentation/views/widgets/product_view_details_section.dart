import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_text_button.dart';

import 'nutration_tile.dart';
import 'product_details_tile.dart';
import 'product_title.dart';
import 'product_view_buying_number.dart';
import 'review_tile.dart';

class ProductViewDetailsSection extends StatelessWidget {
  const ProductViewDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const ProductTitle(),
          const SizedBox(
            height: 30,
          ),
          const ProductViewBuyingNumber(),
          const SizedBox(
            height: 48,
          ),
          const ProductDetailsTile(),
          const NutrationTile(),
          const ReviewTile(),
          CustomTextButton(text: 'Add To Backet', onPressed: () {})
        ],
      ),
    );
  }
}

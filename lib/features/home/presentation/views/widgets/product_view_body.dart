import 'package:flutter/material.dart';

import 'product_view_details_section.dart';
import 'product_view_upper_section.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PruductViewUpperSection(),
          SizedBox(
            height: 30,
          ),
          ProductViewDetailsSection(),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}

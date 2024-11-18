
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_expanded_tite.dart';

class ProductDetailsTile extends StatelessWidget {
  const ProductDetailsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomExpandedTile(
      title: Text('Product Details'),
      children: [
        Text(
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
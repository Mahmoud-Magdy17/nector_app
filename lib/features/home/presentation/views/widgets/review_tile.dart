import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';

import '../../../../../core/widgets/custom_expanded_tite.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomExpandedTile(
      title: Text('Review'),
      label: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.orange,
            size: 16,
          ),
          Icon(
            Icons.star,
            color: Colors.orange,
            size: 16,
          ),
          Icon(
            Icons.star,
            color: Colors.orange,
            size: 16,
          ),
          
          Icon(
            Icons.star,
            color: AppColors.grey,
            size: 16,
          ),
          Icon(
            Icons.star,
            color: AppColors.grey,
            size: 16,
          ),
        ],
      ),
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

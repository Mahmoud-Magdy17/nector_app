import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

import 'custom_expanded_tite.dart';
import 'product_title.dart';
import 'product_view_buying_number.dart';

class ProductViewDetailsSection extends StatelessWidget {
  const ProductViewDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          ProductTitle(),
          SizedBox(
            height: 30,
          ),
          ProductViewBuyingNumber(),
          SizedBox(
            height: 48,
          ),
          ProductDetailsTile(),
          NutrationTile(),
          ReviewTile(),
        ],
      ),
    );
  }
}

class ReviewTile extends StatelessWidget {
  const ReviewTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomExpandedTile(
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

class ProductDetailsTile extends StatelessWidget {
  const ProductDetailsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomExpandedTile(
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

class NutrationTile extends StatelessWidget {
  const NutrationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomExpandedTile(
      title: Text('Nutritions'),
      label: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: AppColors.offWhite,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          '100gr',
          style: AppTextStyle.gilroy26px600.copyWith(
            fontSize: 9,
            color: AppColors.grey,
          ),
        ),
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


import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

import '../../../../../core/widgets/custom_expanded_tite.dart';

class NutrationTile extends StatelessWidget {
  const NutrationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomExpandedTile(
      title: const Text('Nutritions'),
      label: Container(
        padding: const EdgeInsets.all(6),
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
      children: const [
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

import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';

import 'select_location_titles.dart';

class SelectLocationHeader extends StatelessWidget {
  const SelectLocationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: (MediaQuery.of(context).size.width / 5) * 3,
          child: Image.asset(
            AppAssets.location,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const SelectLocationTitles(),
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/widgets/custom_divider.dart';

import 'custom_checkout_details_list.dart';
import 'custom_terms_and_constitions_text.dart';

class CheckoutBottomSheetBody extends StatelessWidget {
  const CheckoutBottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const CustomCheckoutDetailsList(),
          CustomDivider(
            noIndent: true,
            color: AppColors.grey.withOpacity(0.3),
          ),
          const CustomTermsAndConditionsText(),
        ],
      ),
    );
  }
}

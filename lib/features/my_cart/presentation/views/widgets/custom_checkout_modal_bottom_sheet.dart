import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nector_app/core/widgets/custom_text_button.dart';

import 'checkout_bottom_sheet_appbar.dart';
import 'checkout_bottom_sheet_body.dart';

class CustomCheckoutModalBottomSheet extends StatelessWidget {
  const CustomCheckoutModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const CheckoutBottomSheetAppbar(),
          const CheckoutBottomSheetBody(),
          CustomTextButton(
            text: "Place Order",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

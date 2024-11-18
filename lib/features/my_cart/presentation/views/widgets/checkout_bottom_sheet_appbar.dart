
import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_appbar_title.dart';
import 'package:nector_app/core/widgets/custom_back_button.dart';

class CheckoutBottomSheetAppbar extends StatelessWidget {
  const CheckoutBottomSheetAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomAppBarTitle(title: "Checkout"),
        Spacer(),
        CustomBackButton(
          icon: Icons.close,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_functions.dart';
import 'package:nector_app/core/widgets/custom_text_button.dart';
import 'package:nector_app/features/my_cart/presentation/views/widgets/order_field_dialog.dart';

import 'checkout_bottom_sheet_appbar.dart';
import 'checkout_bottom_sheet_body.dart';

class CustomCheckoutModalBottomSheet extends StatelessWidget {
  const CustomCheckoutModalBottomSheet({
    super.key,
  });

  final bool orderDone = false;
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
              if (orderDone) {
                navigationPush(
                  context,
                  AppRouter.routes[AppRouter.orderDoneView],
                );
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const OrderFieldDialog();
                    
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

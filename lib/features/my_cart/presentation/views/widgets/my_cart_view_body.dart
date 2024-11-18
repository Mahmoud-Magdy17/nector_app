import 'package:flutter/material.dart';
import 'package:nector_app/features/my_cart/presentation/views/widgets/my_cart_list_view.dart';

import 'custom_checkout_modal_bottom_sheet.dart';
import 'custom_my_cart_text_button.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyCartListView(),
        const SizedBox(
          height: 8,
        ),
        CustomMyCartTextButton(
          totalPrice: '120.45\$',
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const CustomCheckoutModalBottomSheet();
              },
            );
          },
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

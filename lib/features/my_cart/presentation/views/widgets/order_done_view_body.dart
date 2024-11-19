import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';

import 'order_done_view_body_actions.dart';
import 'order_done_view_body_text.dart';

class OrderDoneViewBody extends StatelessWidget {
  const OrderDoneViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          AppAssets.resetPasswordDone,
        ),
        const OrderDoneViewBodyText(),
        const OrderDoneViewBodyActions(),
      ],
    );
  }
}

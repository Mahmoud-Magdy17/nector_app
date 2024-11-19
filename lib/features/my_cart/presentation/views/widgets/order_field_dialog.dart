import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/widgets/custom_back_button.dart';
import 'package:nector_app/features/my_cart/presentation/views/widgets/order_made_view_body_actions.dart';
import 'package:nector_app/features/my_cart/presentation/views/widgets/order_made_view_body_text.dart';

class OrderFieldDialog extends StatelessWidget {
  const OrderFieldDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          18,
        ),
      ),
      contentPadding: const EdgeInsets.all(0),
      content: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(color: AppColors.white),
        // width: (MediaQuery.of(context).size.width / 10) * 9,
        height: (MediaQuery.of(context).size.height / 3) * 2,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: CustomBackButton(
                icon: Icons.close,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Image.asset(AppAssets.orderFiled),
            const SizedBox(
              height: 12,
            ),
            const OrderMadeViewBodyText(
              title: AppStrings.orderField,
              subTitle: AppStrings.somethingWentWrong,
            ),
            const Spacer(),
            OrderMadeViewBodyActions(
              positiveActionText: 'Please Try Again',
              positiveActionOnPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

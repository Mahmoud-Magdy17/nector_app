import 'package:flutter/material.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_functions.dart';
import 'package:nector_app/core/utils/app_style.dart';

import 'custom_add_action_button.dart';

class CustomElementCard extends StatelessWidget {
  const CustomElementCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.grey.withOpacity(0.7)),
        borderRadius: BorderRadius.circular(12),
      ),
      height: double.infinity,
      width: MediaQuery.of(context).size.width / 2.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: (MediaQuery.of(context).size.width / 2.40) / 1.5,
                child: Image.network(
                    'https://img.freepik.com/free-psd/isolated-old-paper-scroll-ancient-papyrus_1409-3481.jpg?t=st=1730576038~exp=1730579638~hmac=5e009a917b38400f09a58059a4dfaaefd95be02d9bd46a317af4edead52587a9&w=826'),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Red Apple",
            style: AppTextStyle.gilroy28px800.copyWith(
              fontSize: 20,
            ),
          ),
          Text(
            "1kg, Priceg",
            style: AppTextStyle.gilroy16px500
                .copyWith(color: AppColors.grey, fontSize: 18),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${4.99}",
                style: AppTextStyle.gilroy26px600.copyWith(fontSize: 22),
              ),
              CustomAddActionButton(
                onPressed: () {
                  navigationPush(context, AppRouter.routes[AppRouter.productDetailsView]);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

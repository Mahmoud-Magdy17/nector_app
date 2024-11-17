import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_functions.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/core/widgets/custom_add_action_button.dart';

class CartItemCountingNumber extends StatefulWidget {
  const CartItemCountingNumber({
    super.key,
  });

  @override
  State<CartItemCountingNumber> createState() => _CartItemCountingNumberState();
}

class _CartItemCountingNumberState extends State<CartItemCountingNumber> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomActionButton(
          onPressed: () {
            setState(() {
              log("$counter");
              if (counter > 0) {
                counter--;
              } else {
                customShowToast(msg: "Cannot decrease below zero");
              }
            });
          },
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.grey,
          borderColor: AppColors.offWhite,
          icon: Icons.remove,
        ),
        Container(
          alignment: Alignment.center,
          width: 40,
          child: Text(
            "$counter",
            style: AppTextStyle.gilroy26px600.copyWith(fontSize: 18),
          ),
        ),
        CustomActionButton(
          onPressed: () {
            setState(
              () {
                counter++;
              },
            );
          },
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.primaryColor,
          borderColor: AppColors.offWhite,
          icon: Icons.add,
        ),
      ],
    );
  }
}

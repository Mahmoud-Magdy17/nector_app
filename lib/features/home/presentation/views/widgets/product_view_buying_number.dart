import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nector_app/core/utils/app_style.dart';

import 'counter_input_numbers_field.dart';

class ProductViewBuyingNumber extends StatelessWidget {
  const ProductViewBuyingNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.minus)),
            const CounterInputNumbersField(),
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.plus)),
          ],
        ),
        Text('\$125.5',style: AppTextStyle.gilroy28px800.copyWith(fontSize: 24),),
      ],
    );
  }
}

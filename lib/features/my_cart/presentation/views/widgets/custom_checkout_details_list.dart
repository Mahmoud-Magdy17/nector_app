import 'package:flutter/material.dart';

import 'custom_checkout_expanded_tile.dart';

class CustomCheckoutDetailsList extends StatelessWidget {
  const CustomCheckoutDetailsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:  [
        CustomCheckoutExpandedTile(
          text: "Delivert",
          labelString: "Select Method",
          content: Text(
            "data",
            textAlign: TextAlign.start,
          ),
        ),
        CustomCheckoutExpandedTile(
          text: "Pament",
          content: Text(
            "data",
            textAlign: TextAlign.start,
          ),
          labelIcon: Icons.flag,
        ),
        CustomCheckoutExpandedTile(
          text: "Total Cost",
          content: Text(
            "data",
            textAlign: TextAlign.start,
          ),
          labelString: "\$13.97",
        ),
        CustomCheckoutExpandedTile(
          text: "Promo Code",
          content: Text(
            "data",
            textAlign: TextAlign.start,
          ),
          labelString: "Pick discount",
        ),
      ],
    );
  }
}

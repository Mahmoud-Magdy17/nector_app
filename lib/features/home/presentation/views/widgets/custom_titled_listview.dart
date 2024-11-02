
import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CustomTitledListView extends StatelessWidget {
  const CustomTitledListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exclusive Offer",
                  style:
                      AppTextStyle.gilroy28px800.copyWith(fontSize: 20),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(
                      0,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style:
                        AppTextStyle.gilroy26px600.copyWith(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.amber,
          )),
        ],
      ),
    );
  }
}

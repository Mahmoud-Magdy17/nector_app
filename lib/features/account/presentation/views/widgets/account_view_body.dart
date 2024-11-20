import 'package:flutter/material.dart';

import 'custom_account_circle_image.dart';
import 'username_and_email_label.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: SizedBox(
            height: 124,
            width: MediaQuery.of(context).size.width,
            child: const Row(
              children: [
                CustomAccountCircleImage(),
                SizedBox(
                  width: 16,
                ),
                UsernameAndEmailLabel()
              ],
            ),
          ),
        )
      ],
    );
  }
}

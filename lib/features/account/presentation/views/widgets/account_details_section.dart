import 'package:flutter/material.dart';

import 'custom_account_circle_image.dart';
import 'username_and_email_label.dart';

class AccountDetailsSection extends StatelessWidget {
  const AccountDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SafeArea(
        child: SizedBox(
          height: 124,
          width: MediaQuery.of(context).size.width,
          child: const Row(
            children: [
              CustomAccountCircleImage(),
              SizedBox(
                width: 16,
              ),
              UsernameAndEmailLabel(),
            ],
          ),
        ),
      ),
    );
  }
}

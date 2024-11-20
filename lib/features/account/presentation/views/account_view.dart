import 'package:flutter/material.dart';
import 'package:nector_app/features/account/presentation/views/widgets/account_view_body.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: AccountViewBody(),
    );
  }
}

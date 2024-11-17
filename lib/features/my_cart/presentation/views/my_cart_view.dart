import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_appbar.dart';
import 'package:nector_app/core/widgets/custom_appbar_title.dart';
import 'package:nector_app/core/widgets/custom_divider.dart';

import 'widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Column(
        children: [
          CustomAppBar(
            child: CustomAppBarTitle(title: 'My Cart'),
          ),
          CustomDivider(noIndent: true),
          Expanded(
            child: MyCartViewBody(),
          ),
        ],
      ),
    );
  }
}

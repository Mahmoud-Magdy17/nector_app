import 'package:flutter/material.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_scaffold.dart';
import 'package:nector_app/features/my_cart/presentation/views/widgets/order_made_view_body.dart';

class OrderDoneView extends StatelessWidget {
  const OrderDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 56.0),
          child: SafeArea(
            child: OrderDoneViewBody(),
          ),
        ),
      ),
    );
  }
}

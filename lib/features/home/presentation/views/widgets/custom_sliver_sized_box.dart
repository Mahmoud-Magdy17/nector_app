import 'package:flutter/material.dart';

class CustomSliverSizedBox extends StatelessWidget {
  const CustomSliverSizedBox({
    super.key,
    required this.height,
  });

  final double height;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
      ),
    );
  }
}

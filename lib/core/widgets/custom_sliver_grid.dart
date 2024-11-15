
import 'package:flutter/material.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({
    super.key,
    required this.children,
  });
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2.5 / 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        crossAxisCount: 2,
      ),
      delegate: SliverChildListDelegate(children),
    );
  }
}

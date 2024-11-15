import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.child,
    this.leading = const SizedBox(),
    this.actions = const SizedBox(),
  });
  final Widget child;
  final Widget leading;
  final Widget actions;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [leading,child,actions],
        ),
      ),
    );
  }
}

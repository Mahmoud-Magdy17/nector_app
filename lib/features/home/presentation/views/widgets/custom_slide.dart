
import 'package:flutter/material.dart';

class CustomSlide extends StatelessWidget {
  const CustomSlide({
    super.key,
    required this.imageLink,
  });
  final String imageLink;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        clipBehavior: Clip.hardEdge,
        child: Image.network(
          imageLink,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_appbar.dart';


class CategoryView extends StatelessWidget {
  const CategoryView({super.key,  this.categoryName = "Beverages"});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            CustomAppBar(
              child: Text(categoryName),
            ),
          ],
        ),
      ),
    );
  }
}

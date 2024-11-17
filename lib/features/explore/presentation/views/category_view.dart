import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_appbar.dart';
import 'package:nector_app/core/widgets/custom_appbar_title.dart';
import 'package:nector_app/core/widgets/custom_back_button.dart';
import 'package:nector_app/core/widgets/custom_navigation_filters_button.dart';
import 'package:nector_app/features/explore/presentation/views/widgets/category_view_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, this.categoryName = "Beverages"});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            CustomAppBar(
              leading: const CustomBackButton(),
              actions: const CustomNavigationFiltersButton(),
              child: CustomAppBarTitle(title: categoryName),
            ),
            const CategoryViewBody()
          ],
        ),
      ),
    ));
  }
}

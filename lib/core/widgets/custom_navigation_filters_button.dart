
import 'package:flutter/material.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_functions.dart';

class CustomNavigationFiltersButton extends StatelessWidget {
  const CustomNavigationFiltersButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        navigationPush(context, AppRouter.routes[AppRouter.filters]);
      },
      icon: const Icon(Icons.tune),
    );
  }
}

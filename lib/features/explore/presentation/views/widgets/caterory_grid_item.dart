import 'package:flutter/material.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_functions.dart';

class CateroyGridItem extends StatelessWidget {
  const CateroyGridItem({
    super.key,
    this.color = const Color.fromARGB(82, 177, 117, 26),
    this.categoryName = 'Frash Fruits & Vegetable',
    this.imageLink =
        'https://cdn-icons-png.flaticon.com/128/706/706164.png',
  });
  final Color color;
  final String categoryName;
  final String imageLink;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigationPush(context, AppRouter.routes[AppRouter.categoryView]);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          border: Border.all(color: color, width: 1),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80, child: Image.network(imageLink)),
            const SizedBox(
              height: 24,
            ),
            Text(
              categoryName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

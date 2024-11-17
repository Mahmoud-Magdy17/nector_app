import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/custom_element_card.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key,  this.children = const [
          CustomElementCard(),
          CustomElementCard(),
          CustomElementCard(),
          CustomElementCard(),
          CustomElementCard(),
        ]});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2.2 / 3.3,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          crossAxisCount: 2,
        ),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return children[index];
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_appbar.dart';

class FiltersView extends StatelessWidget {
  const FiltersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        CustomAppBar(child: Text("Filters"),)
      ],),
    );
  }
}
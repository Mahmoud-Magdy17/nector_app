import 'package:flutter/material.dart';
import 'package:nector_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: HomeViewBody(),
        ),
      ),
    );
  }
}

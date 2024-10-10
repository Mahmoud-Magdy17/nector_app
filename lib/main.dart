import 'package:flutter/material.dart';
import 'package:nector_app/core/router/app_router.dart';

void main() {
  runApp(const NectorApp());
}

class NectorApp extends StatelessWidget {
  const NectorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppRouter.routes[AppRouter.splash],
    );
  }
}

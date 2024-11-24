import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/router/app_router.dart';
import 'features/authontication/presentation/manager/authontication_cubit/authontication_cubit.dart';

void main() {
  runApp(const NectorApp());
}

class NectorApp extends StatelessWidget {
  const NectorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthonticationCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppRouter.routes[AppRouter.splashView],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nector_app/features/authontication/presentation/manager/authontication_cubit/authontication_cubit.dart';
import 'package:nector_app/features/navigation/presentation/views/navigation.dart';

import 'features/home/presentation/views/home_view.dart';


void main() {
  runApp(const NectorApp());
}

class NectorApp extends StatelessWidget {
  const NectorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthonticationCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: AppRouter.routes[AppRouter.splashView],
        home: NavigationView(),
      ),
    );
  }
}

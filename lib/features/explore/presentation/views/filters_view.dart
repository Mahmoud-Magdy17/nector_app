import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nector_app/core/widgets/custom_appbar.dart';
import 'package:nector_app/core/widgets/custom_appbar_title.dart';
import 'package:nector_app/core/widgets/custom_back_button.dart';
import 'package:nector_app/features/explore/presentation/cubits/check_cubit/check_cubit.dart';

import 'widgets/filters_view_body.dart';

class FiltersView extends StatelessWidget {
  const FiltersView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckCubit(),
      child: const Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                CustomAppBar(
                  leading: CustomBackButton(
                    icon: Icons.close,
                  ),
                  child: CustomAppBarTitle(title: "Filters"),
                ),
                FiltersViewBody(),
              ],
            )),
      ),
    );
  }
}

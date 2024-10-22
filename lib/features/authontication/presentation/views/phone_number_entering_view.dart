import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_functions.dart';
import 'package:nector_app/core/widgets/custom_back_button.dart';
import 'package:nector_app/features/authontication/presentation/cubit/cubit/authontication_cubit.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_scaffold.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/phone_number_entering_view_body.dart';

class PhoneNumberEnteringView extends StatelessWidget {
  const PhoneNumberEnteringView({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic cubit = context.read<AuthonticationCubit>();
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          log(cubit.countryCode);
          log(cubit.phoneNumber);
          navigationPush(
            context,
            AppRouter.routes[AppRouter.entering4DigitCodeView],
          );
        },
        child: const CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.white,
          radius: 32,
          child: Icon(
            FontAwesomeIcons.angleRight,
          ),
        ),
      ),
      body: const CustomScaffold(
        body: Column(
          children: [
            SafeArea(
              child: CustomAppBar(
                leading: CustomBackButton(),
              ),
            ),
            PhoneNumberEnteringViewBody(),
          ],
        ),
      ),
    );
  }
}

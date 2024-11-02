import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/utils/app_functions.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/widgets/custom_text_button.dart';
import 'package:nector_app/features/authontication/presentation/manager/authontication_cubit/authontication_cubit.dart';

import 'custom_location_drop_down_menu_field.dart';
import 'select_location_header.dart';

class SelectLocationViewBody extends StatelessWidget {
  const SelectLocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AuthonticationCubit>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SelectLocationHeader(),
            const SizedBox(
              height: 90,
            ),
            const CustomDropDownMenuField(),
            const SizedBox(
              height: 24,
            ),
            CustomTextButton(
              text: AppStrings.submit,
              onPressed: () {
                log(cubit.phoneNumber??"phone number");
                log(cubit.fourDigitsCode);
                log(cubit.location);
                Navigator.popUntil(context, ModalRoute.withName('/'));
                navigationPush(context, AppRouter.routes[AppRouter.homeView]);
              },
            ),
          ],
        ),
      ),
    );
  }
}

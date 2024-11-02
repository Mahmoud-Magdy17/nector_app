import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nector_app/constants.dart';
import 'package:nector_app/core/utils/app_style.dart';

import '../../manager/authontication_cubit/authontication_cubit.dart';

class CustomLocationDropDownMenuButton extends StatelessWidget {
  const CustomLocationDropDownMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthonticationCubit, AuthonticationState>(
      builder: (context, state) {
        return DropdownButton(
          hint: Text(
            context.read<AuthonticationCubit>().location,
            style: AppTextStyle.gilroy16px500.copyWith(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          onChanged: (String? value) {
            context.read<AuthonticationCubit>().setLocation(value);
            log(value ?? "not set");
            log(context.read<AuthonticationCubit>().location);
          },
          style: AppTextStyle.gilroy16px500.copyWith(
            fontSize: 18,
            color: Colors.black,
          ),
          items: [
            ...egyptLocations.map(
              (e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              },
            )
          ],
        );
      },
    );
  }
}

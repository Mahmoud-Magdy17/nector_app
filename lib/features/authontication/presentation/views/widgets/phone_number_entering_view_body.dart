import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:phonenumber_input/phonenumber_input.dart';

import '../../manager/authontication_cubit/authontication_cubit.dart';

class PhoneNumberEnteringViewBody extends StatefulWidget {
  const PhoneNumberEnteringViewBody({
    super.key,
  });

  @override
  State<PhoneNumberEnteringViewBody> createState() =>
      _PhoneNumberEnteringViewBodyState();
}

class _PhoneNumberEnteringViewBodyState
    extends State<PhoneNumberEnteringViewBody> {
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AuthonticationCubit>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),

          Text(
            AppStrings.enterYourMobileNumber,
            style: AppTextStyle.gilroy26px600.copyWith(fontSize: 24),
          ),
          const SizedBox(
            height: 25,
          ),
          PhoneNumberInput(
            labelText: AppStrings.mobileNumber,
            onCountryCodeChanged: (selectedCode) {
              cubit.countryCode = selectedCode;
            },
            onPhoneNumberChanged: (writtenNumber) {
              cubit.phoneNumber = writtenNumber;
            },
          )
        ],
      ),
    );
  }
}

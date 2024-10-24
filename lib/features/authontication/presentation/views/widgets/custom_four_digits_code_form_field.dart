import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_strings.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/features/authontication/presentation/cubit/cubit/authontication_cubit.dart';

class CustomFourDigitsCodeFormField extends StatelessWidget {
  const CustomFourDigitsCodeFormField({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AuthonticationCubit>();
    return SizedBox(
      height: 84,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.code,
            style: AppTextStyle.gilroy26px600
                .copyWith(fontSize: 16, color: AppColors.grey),
          ),
          TextFormField(
            onChanged: (value) {
              cubit.fourDigitsCode = value;
            },
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.grey.withOpacity(0.4))),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.grey.withOpacity(0.4))),
              hintText: '----',
              hintStyle: AppTextStyle.gilroy26px600
                  .copyWith(fontSize: 16, color: AppColors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

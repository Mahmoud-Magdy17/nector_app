import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/features/explore/presentation/cubits/check_cubit/check_cubit.dart';

import '../../../data/enums/filters_enum.dart';

class CustomCheckBoxItem extends StatelessWidget {
  const CustomCheckBoxItem({
    super.key,
    required this.title,
    required this.filter,
  });
  final String title;
  final FilterType filter;
  @override
  Widget build(BuildContext context) {
    CheckCubit cubit = context.read<CheckCubit>();
    return BlocBuilder<CheckCubit, CheckState>(
      builder: (context, state) {
        return Row(
          
          children: [
            Checkbox(
              activeColor: AppColors.primaryColor,
              side: const BorderSide(color: Color(0xffB1B1B1)),
              value: cubit.filter.getFilter(filter),
              onChanged: (val) {
                cubit.check(filter);
              },
            ),
            InkWell(
              onTap: () {
                cubit.check(filter);
              },
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Text(
                title,
                style: AppTextStyle.gilroy26px600.copyWith(
                  color: cubit.getFilter(filter)
                      ? AppColors.primaryColor
                      : Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

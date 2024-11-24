import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CodeFieldDigit extends StatelessWidget {
  const CodeFieldDigit({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      width: 44,
      height: 44,
      child: TextField(
        decoration: const InputDecoration(border: InputBorder.none),
        style: AppTextStyle.gilroy16px500
            .copyWith(color: AppColors.white, fontSize: 24),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        cursorColor: AppColors.white,
        onTap: () {
          controller.text = '';
        },
        onChanged: (value) {
          if (value.length > 1) {
            String a = '';
            a = value[1];
            controller.text = a;
            FocusScope.of(context).nextFocus();
          } else if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}

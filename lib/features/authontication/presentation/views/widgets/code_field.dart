import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';

import 'code_field_digit.dart';

class CodeField extends StatefulWidget {
  const CodeField({super.key});

  @override
  State<CodeField> createState() => _CodeFieldState();
}

class _CodeFieldState extends State<CodeField> {
  late List<TextEditingController> controllers = List.generate(
    6,
    (index) => TextEditingController(
      text: '',
    ),
  );
  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(16),
      ),
      width: double.infinity,
      height: 64,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        CodeFieldDigit(controller: controllers[0]),
        CodeFieldDigit(controller: controllers[1]),
        CodeFieldDigit(controller: controllers[2]),
        CodeFieldDigit(controller: controllers[3]),
        CodeFieldDigit(controller: controllers[4]),
        CodeFieldDigit(controller: controllers[5]),
      ]),
    );
  }
}

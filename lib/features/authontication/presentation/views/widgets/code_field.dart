import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CodeField extends StatefulWidget {
  const CodeField({super.key});

  @override
  State<CodeField> createState() => _CodeFieldState();
}

const zwsp = '\u200b';

// the selection is at offset 1 so any character is inserted after it.
const zwspEditingValue = TextEditingValue(
    text: zwsp, selection: TextSelection(baseOffset: 1, extentOffset: 1));

class _CodeFieldState extends State<CodeField> {
  List<String> code = ['', '', '', '', '', ''];
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;
  @override
  void initState() {
    controllers = List.generate(6, (index) {
      final ctrl = TextEditingController();
      ctrl.value = zwspEditingValue;
      return ctrl;
    });
    focusNodes = List.generate(6, (index) => FocusNode());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      focusNodes[0].requestFocus();
    });

    super.initState();
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(6, (index) {
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
              style: AppTextStyle.gilroy16px500.copyWith(color: AppColors.white,fontSize: 24),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              focusNode: focusNodes[index],
              controller: controllers[index],
              onChanged: (value) {
                autoMovingOnChanged(value, index);
              },
            ),
          );
        }),
      ),
    );
  }

  void autoMovingOnChanged(value, index) {
    if (value.length > 1) {
      if (index + 1 == focusNodes.length) {
        FocusScope.of(context).unfocus();
      } else {
        focusNodes[index + 1].requestFocus();
      }
    } else {
      controllers[index].value = zwspEditingValue;
      if (index == 0) {
      } else {
        controllers[index - 1].value = zwspEditingValue;
        focusNodes[index - 1].requestFocus();
      }
    }
    code[index] = value.replaceAll(zwsp, '');
    debugPrint('current code = $code');
  }
}

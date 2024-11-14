
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nector_app/core/utils/app_style.dart';

class CounterInputNumbersField extends StatelessWidget {
  const CounterInputNumbersField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 0),
      ),
      child: TextField(
        style: AppTextStyle.gilroy26px600.copyWith(fontSize: 18),
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.center,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

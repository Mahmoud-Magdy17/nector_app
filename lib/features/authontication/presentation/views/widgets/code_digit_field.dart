import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';

class CodeDigitField extends StatelessWidget {
  const CodeDigitField({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      margin: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      width: 44,
      height: 44,
      child: TextField(
        keyboardType: TextInputType.number,
        
      ),
    );
  }
}

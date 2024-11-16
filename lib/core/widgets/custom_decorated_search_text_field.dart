import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';

import '../../features/home/presentation/views/widgets/custom_text_field.dart';
import 'filters_butten.dart';

class CustomDecoratedSearchTextField extends StatefulWidget {
  const CustomDecoratedSearchTextField({
    super.key,
  });

  @override
  State<CustomDecoratedSearchTextField> createState() =>
      _CustomDecoratedSearchTextFieldState();
}

class _CustomDecoratedSearchTextFieldState
    extends State<CustomDecoratedSearchTextField> {
  String haveContent = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
      width: double.infinity,
      height: 70,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.offWhite,
                borderRadius: BorderRadius.circular(16),
              ),
              child: SearchTextField(
                onChanged: (val) {
                  setState(() {
                    haveContent = val;
                  });
                },
              ),
            ),
          ),
          if (haveContent.isNotEmpty) const FiltersButton()
        ],
      ),
    );
  }
}

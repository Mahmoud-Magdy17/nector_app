
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nector_app/core/utils/app_style.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(borderSide: BorderSide.none),
        hintText: "Search Store",
        hintStyle: AppTextStyle.gilroy28px800.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        prefixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.black,
            size: 24,
          ),
        ),
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      style: AppTextStyle.gilroy28px800.copyWith(
        color: Colors.black,
        fontSize: 20,
      ),
    );
  }
}

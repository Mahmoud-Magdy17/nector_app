import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.icon = FontAwesomeIcons.angleLeft});
  final IconData icon;
  
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        icon,
        size: 32,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nector_app/core/utils/app_colors.dart';

class CustomExpandedTile extends StatefulWidget {
  const CustomExpandedTile({
    super.key,
    required this.title,
    required this.children,
    this.label,
  });
  final List<Widget> children;
  final Widget title;
  final Widget? label;
  @override
  State<CustomExpandedTile> createState() => _CustomExpandedTileState();
}

class _CustomExpandedTileState extends State<CustomExpandedTile> {
  int curState = 0;
  final List<Widget> leading = const [
    Icon(FontAwesomeIcons.angleRight),
    Icon(FontAwesomeIcons.angleDown),
  ];
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      trailing: leading[curState],
      onExpansionChanged: (value) {
        setState(() {
          curState == 0 ? curState = 1 : curState = 0;
        });
      },
      collapsedShape: Border(
        top: BorderSide(
          color: AppColors.grey.withOpacity(0.4),
          width: 1,
        ),
      ),
      shape: Border(
        top: BorderSide(
          color: AppColors.grey.withOpacity(0.4),
          width: 1,
        ),
        bottom: BorderSide.none,
      ),
      childrenPadding: const EdgeInsets.symmetric(vertical: 8),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.title,
          widget.label ?? const SizedBox(),
        ],
      ),
      children: widget.children,
    );
  }
}

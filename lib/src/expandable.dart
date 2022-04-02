import 'package:XLR8_utils/xlr8_utils.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

final shape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(0),
);

class Expandable extends StatelessWidget {
  const Expandable(
      {required this.child,
      required this.isExpand,
      required this.headerTitle,
      this.headerStyle,
      required this.expandableController,
      this.color,
      this.iconColor,
      this.elevation,
      Key? key})
      : super(key: key);

  final Widget child;
  final bool isExpand;
  final String headerTitle;
  final TextStyle? headerStyle;
  final ExpandableController expandableController;
  final Color? color;
  final Color? iconColor;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation ?? 0.0,
      margin: EdgeInsets.zero,
      color: color,
      shape: shape,
      child: ExpandablePanel(
        controller: expandableController,
        theme: isExpand
            ? ExpandableThemeData(
                iconColor: iconColor,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
              )
            : const ExpandableThemeData(
                hasIcon: false,
                tapHeaderToExpand: false,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
              ),
        header: Padding(
          padding: const EdgeInsets.only(left: 24, top: 10, bottom: 10),
          child: Text(headerTitle, style: headerStyle ?? TextStyles.label.black),
        ),
        collapsed: Container(),
        expanded: Card(
          elevation: elevation ?? 0.0,
          margin: EdgeInsets.zero,
          shape: shape,
          color: color,
          child: child,
        ),
      ),
    );
  }
}

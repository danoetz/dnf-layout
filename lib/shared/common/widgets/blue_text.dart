import 'package:dnf_layout/shared/common/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlueText extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final FontWeight fontWeight;

  const BlueText({
    Key key,
    @required this.text,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      child: Text(
        text,
        style: TextStyle(color: MyColors.deeperBlue, fontWeight: fontWeight),
      ),
    );
  }
}

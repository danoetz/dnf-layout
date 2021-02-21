import 'package:dnf_layout/shared/common/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final FontWeight fontWeight;

  const SimpleText({
    Key key,
    @required this.text,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.fontWeight = FontWeight.bold,
    this.color = MyColors.deeperBlue,
    this.size = 14.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
        ),
      ),
    );
  }
}

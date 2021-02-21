import 'package:flutter/material.dart';
import 'package:dnf_layout/shared/common/widgets/widgets.dart';

class CardContentDetail extends StatelessWidget {
  final String title;
  final String value;
  final bool leftIconOfTitle;
  final bool rightIconOfTitle;
  final bool leftIconOfValue;
  final bool rightIconOfValue;
  final Icon titleIcon;
  final Icon valueIcon;
  final bool divider;

  const CardContentDetail({
    Key key,
    @required this.title,
    @required this.value,
    this.leftIconOfTitle = false,
    this.rightIconOfTitle = false,
    this.leftIconOfValue = false,
    this.rightIconOfValue = false,
    this.titleIcon = const Icon(Icons.error),
    this.valueIcon = const Icon(Icons.error),
    this.divider = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          border: Border(
        top: divider
            ? BorderSide(width: 1, color: Colors.black12)
            : BorderSide.none,
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (leftIconOfTitle) titleIcon,
              SimpleText(
                text: title,
                padding: leftIconOfTitle
                    ? EdgeInsets.only(left: 4.0)
                    : EdgeInsets.only(right: 4.0),
              ),
              if (rightIconOfTitle) titleIcon,
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (leftIconOfValue) valueIcon,
              SimpleText(
                text: value,
                padding: rightIconOfValue
                    ? EdgeInsets.only(right: 4.0)
                    : EdgeInsets.only(left: 4.0),
              ),
              if (rightIconOfValue) valueIcon,
            ],
          ),
        ],
      ),
    );
  }
}

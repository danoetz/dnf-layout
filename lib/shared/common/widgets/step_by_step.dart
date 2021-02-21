import 'package:flutter/material.dart';
import 'package:dnf_layout/shared/common/styles/styles.dart';

class StepByStep extends StatelessWidget {
  final BuildContext context;
  final List<String> values;
  final int currentPosition;
  final int maxLimitPosition;
  final VoidCallback voidCallback;
  final Function(int) onPositionChanged;
  final Color currentStepBackground,
      currentStepNumberTextColor,
      activatedNodeStepBackground,
      activatedLineStepBackground,
      activatedStepNumberTextColor,
      inActivatedNodeStepBackground,
      inActivatedLineStepBackground,
      inActivatedStepNumberTextColor,
      backgroundColor;
  final double height;
  final EdgeInsets wholePadding;
  final EdgeInsets wholeMargin;
  final double textSize;
  final double pointCircleRadius;
  final bool showStepContentWidget;
  final Widget stepContentWidget;
  const StepByStep({
    @required this.context,
    @required this.values,
    @required this.currentPosition,
    @required this.maxLimitPosition,
    @required this.voidCallback,
    @required this.onPositionChanged,
    this.currentStepBackground = MyColors.white,
    this.currentStepNumberTextColor = MyColors.blue,
    this.activatedNodeStepBackground = MyColors.white,
    this.activatedLineStepBackground = MyColors.white,
    this.activatedStepNumberTextColor = MyColors.blue,
    this.inActivatedNodeStepBackground = MyColors.blue,
    this.inActivatedLineStepBackground = MyColors.whiteOpacity,
    this.inActivatedStepNumberTextColor = MyColors.white,
    this.height = 50,
    this.wholePadding = const EdgeInsets.all(0.0),
    this.wholeMargin = const EdgeInsets.all(0.0),
    this.backgroundColor = MyColors.darkGrey,
    this.textSize = 12,
    this.pointCircleRadius = 20,
    this.showStepContentWidget = false,
    this.stepContentWidget,
  });

  double getWidthMoreThen4Nodes(BuildContext context) {
    return ((MediaQuery.of(context).size.width - 20) /
            values.length *
            currentPosition) +
        50;
  }

  double getWidthLessThen4Nodes(BuildContext context) {
    return ((MediaQuery.of(context).size.width - 20) /
            values.length *
            currentPosition) +
        (currentPosition * 50);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: wholePadding,
      margin: wholeMargin,
      height: height,
      child: Stack(
        children: [
          Container(
            height: height,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _map(
                list: values,
                handler: (position, item) {
                  return Expanded(
                    child: Container(
                      height: height,
                      child: Divider(
                        color: MyColors.whiteOpacity,
                        thickness: 2,
                        indent: position == 0 ? 20 : 0,
                        endIndent: position == values.length - 1 ? 20 : 0,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            height: height,
            width: currentPosition == 0
                ? 0
                : values.length > 4
                    ? getWidthMoreThen4Nodes(context)
                    : getWidthLessThen4Nodes(context),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _map(
                list: values,
                handler: (position, item) {
                  return Expanded(
                    child: Container(
                      height: height,
                      child: Divider(
                        color: MyColors.white,
                        thickness: 4,
                        indent: position == 0 ? 20 : 0,
                        endIndent: position == values.length - 1 ? 20 : 0,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _map(
                list: values,
                handler: (position, item) {
                  return Container(
                    height: height,
                    width: 40,
                    child: GestureDetector(
                      onTap: (position > maxLimitPosition - 1)
                          ? null
                          : () {
                              print(position);
                              onPositionChanged(position);
                              voidCallback();
                            },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: currentPosition == position
                                ? (pointCircleRadius + 15)
                                : (15),
                            width: currentPosition == position
                                ? (pointCircleRadius + 15)
                                : (15),
                            decoration: BoxDecoration(
//                              color: currentPosition == position
                              color: position <= maxLimitPosition - 1
                                  ? currentStepBackground
                                  : (currentPosition < position
                                      ? inActivatedNodeStepBackground
                                      : activatedNodeStepBackground),
                              borderRadius: BorderRadius.circular(
                                  currentPosition == position
                                      ? (pointCircleRadius + 15)
                                      : (pointCircleRadius + 5)),
                              border: Border.all(
                                color: MyColors.white,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                position == currentPosition
                                    ? values[position]
                                    : "",
                                style: TextStyle(
                                  color: position == currentPosition
                                      ? currentStepNumberTextColor
                                      : (currentPosition < position
                                          ? inActivatedStepNumberTextColor
                                          : activatedStepNumberTextColor),
                                  fontWeight: FontWeight.w700,
                                  fontSize: textSize,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: 40,
                              child: Text(
                                position != currentPosition
                                    ? values[position]
                                    : "",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  color: activatedStepNumberTextColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: textSize,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<T> _map<T>({@required List list, @required Function handler}) {
  List<T> result = [];
  if (list != null) {
    if (list.length > 0) {
      if (handler != null) {
        for (var i = 0; i < list.length; i++) {
          result.add(handler(i, list[i]));
        }
      }
    }
  }
  return result;
}

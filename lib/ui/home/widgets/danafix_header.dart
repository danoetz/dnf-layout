import 'package:flutter/material.dart';

class DanafixHeader extends StatelessWidget {
  final String tkb90;
  const DanafixHeader({
    Key key,
    this.tkb90 = "0%",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("assets/images/logo_danafix.png"),
        Positioned(
            top: 0,
            left: 50,
            child: Text(
              "TKB90 = $tkb90",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            )),
        Positioned(
            top: 10,
            left: 50,
            child: Text(
              "FAQ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )),
      ],
    );
  }
}

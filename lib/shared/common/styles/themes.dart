import 'package:flutter/material.dart';

import 'colors.dart';

class MyTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: MyColors.lightBlue,
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: MyColors.lightBlue,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.black,
          ),
          bodyText1: TextStyle(
            color: Colors.black,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
          ),
          button: TextStyle(
            color: Colors.white,
          ),
        ),
        fontFamily: 'Montserrat',
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          buttonColor: MyColors.blue,
          textTheme: ButtonTextTheme.primary,
        ));
  }
}

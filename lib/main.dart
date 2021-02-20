import 'package:flutter/material.dart';
import 'package:dnf_layout/shared/common/styles/styles.dart';
import 'package:dnf_layout/ui/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      theme: MyTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}

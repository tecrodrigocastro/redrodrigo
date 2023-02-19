import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/constants/constants.dart';
import 'package:redrodrigo/shared/widgets/tab_bar/tab_bar_controller.dart';
import 'package:redrodrigo/shared/widgets/tab_bar/tab_bar_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RED RODRIGO',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: kFontFamily,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 62),
          headline2: TextStyle(fontSize: 32),
          labelMedium: TextStyle(fontSize: 16),
          bodyText1: TextStyle(fontSize: 18, color: secondaryWhiteColor),
          bodyText2: TextStyle(fontSize: 14, color: secondaryWhiteColor),
        ),
      ),
      home: const TabBarController(),
    );
  }
}

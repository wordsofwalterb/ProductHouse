import 'package:ProductHouse/util/global.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    fontFamily: 'SFProText',
    primaryColor: PHGlobal.primaryColor,
    buttonColor: Color.fromRGBO(73, 73, 73, 1),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 18,
        color: const Color(0xff222222),
        letterSpacing: 0.19999999237060545,
        height: 1.6666666666666667,
      ),
      caption: TextStyle(
        fontSize: 18,
        color: const Color(0xff848484),
        letterSpacing: 0.19999999237060545,
        fontStyle: FontStyle.italic,
        height: 1.6666666666666667,
      ),
      headline4: TextStyle(
        fontSize: 22,
        color: const Color(0xff000000),
        fontWeight: FontWeight.w600,
      ),
      button: TextStyle(
        fontSize: 18,
        color: const Color(0xffffffff),
      ),
    ),
  );
}

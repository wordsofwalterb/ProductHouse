import 'package:ProductByte/util/global.dart';
import 'package:flutter/material.dart';

ThemeData phTheme({bool isDark}) {
  const darkScheme = ColorScheme(
    primary: Color.fromRGBO(125, 123, 255, 1),
    onError: Colors.white,
    surface: Color.fromRGBO(46, 48, 54, 1),
    onSecondary: Colors.white,
    primaryVariant: Colors.amber,
    brightness: Brightness.dark,
    onPrimary: Colors.white,
    secondary: Color.fromRGBO(70, 73, 89, 1),
    background: Color.fromRGBO(32, 34, 37, 1),
    onBackground: Colors.white,
    error: Colors.red,
    secondaryVariant: Colors.amberAccent,
    onSurface: Colors.white,
  );
  const lightScheme = ColorScheme(
    primary: Color.fromRGBO(12, 107, 196, 1),
    onError: Colors.white,
    surface: Color.fromRGBO(240, 241, 245, 1),
    onSecondary: Color.fromRGBO(60, 60, 60, 1),
    primaryVariant: Colors.amber,
    brightness: Brightness.light,
    onPrimary: Colors.white,
    secondary: Colors.grey,
    background: Colors.white,
    onBackground: Colors.black87,
    error: Colors.red,
    secondaryVariant: Colors.amberAccent,
    onSurface: Color.fromRGBO(60, 60, 60, 1),
  );

  return ThemeData.from(
    colorScheme: isDark ? darkScheme : lightScheme,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontFamily: 'Charter',
        fontSize: 20,
        color: isDark ? Colors.white : Color.fromRGBO(60, 60, 60, 1),
        letterSpacing: 0.19999999237060545,
        height: 1.6666666666666667,
      ),
      caption: TextStyle(
        fontFamily: 'SFProText',
        fontSize: 18,
        color: isDark ? Colors.white : Color(0xff848484),
        letterSpacing: 0.19999999237060545,
        fontStyle: FontStyle.italic,
        height: 1.6666666666666667,
      ),
      headline4: TextStyle(
        fontFamily: 'SFProText',
        fontSize: 22,
        color: isDark ? Colors.white : Color(0xff000000),
        fontWeight: FontWeight.w600,
      ),
      headline6: TextStyle(
        fontFamily: 'SFProText',
        fontSize: 20,
        color: isDark ? Colors.white : Color.fromRGBO(64, 64, 64, 1),
        fontWeight: FontWeight.w700,
      ),
      button: TextStyle(
        fontFamily: 'SFProText',
        fontSize: 18,
        color: isDark ? Colors.white : Color(0xffffffff),
      ),
    ),
  );
}

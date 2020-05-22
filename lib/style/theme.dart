import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const Color _lightPrimaryColor = Color.fromRGBO(244, 113, 127, 1);
  static const Color _lightPrimaryVariantColor = Color(0xff005ad2);
  static const Color _lightBackgroundColor = Color.fromRGBO(255, 255, 255, 1);
  static const Color _lightOnSecondaryColor = Colors.black;

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightBackgroundColor,
    bottomAppBarTheme: BottomAppBarTheme(
      color: _lightPrimaryColor,
      elevation: 0.0,
    ),
    buttonColor: _lightPrimaryColor,
    appBarTheme: AppBarTheme(
      color: Colors.green,
      elevation: 0.0,
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 72.0,
          fontWeight: FontWeight.bold,
          color: _lightPrimaryVariantColor,
        ),
      ),
    ),
    buttonTheme: ButtonThemeData(
      padding: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      textTheme: ButtonTextTheme.primary,
    ),
    fontFamily: "Roboto Slab",
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 72.0,
        fontWeight: FontWeight.bold,
        color: _lightPrimaryVariantColor,
      ),
      headline3: TextStyle(
        fontSize: 20.0,
        fontStyle: FontStyle.italic,
        color: _lightOnSecondaryColor,
      ),
      subtitle1: TextStyle(
        fontSize: 20.0,
        fontStyle: FontStyle.italic,
        color: _lightOnSecondaryColor,
      ),
      bodyText1: TextStyle(
        fontSize: 14.0,
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const Color _lightPrimaryColor = Color.fromRGBO(244, 113, 127, 1);
  static const Color _lightPrimaryVariantColor = Colors.green;
  static const Color _lightBackgroundColor = Color.fromRGBO(255, 255, 255, 1);
  static const Color _lightOnSecondaryColor = Colors.black;
  static const Color _lightOnSelectedColor = Colors.yellow;
  static const Color _lightOnIconColor = Colors.teal;
  static const Color _lightOnCardColor = Colors.white70;
  static const Color _lightOnCardColorShadow = Colors.deepOrange;
  static const Color _lightOnDelIconColor = Colors.red;

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightBackgroundColor,
    bottomAppBarTheme:
        BottomAppBarTheme(color: _lightPrimaryVariantColor, elevation: 10.0),
    cardTheme: CardTheme(
      color: _lightOnCardColor,
      elevation: 10.0,
      shadowColor: _lightOnCardColorShadow,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    accentIconTheme: IconThemeData(
      size: 18.0,
      color: _lightOnDelIconColor,
    ),
    indicatorColor: _lightOnSelectedColor,
    iconTheme: IconThemeData(
      color: _lightOnIconColor,
    ),
    buttonColor: _lightPrimaryColor,
    bottomAppBarColor: _lightPrimaryVariantColor,
    appBarTheme: AppBarTheme(
      color: _lightPrimaryVariantColor,
      elevation: 10.0,
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
      headline6: TextStyle(
        fontSize: 18,
        fontStyle: FontStyle.italic,
        color: _lightOnCardColorShadow,
      ),
      subtitle2: TextStyle(
        fontSize: 12.0,
        fontStyle: FontStyle.italic,
        color: _lightOnCardColorShadow,
      ),
      headline5: TextStyle(
        fontSize: 8.0,
        fontStyle: FontStyle.italic,
        color: _lightOnCardColorShadow,
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

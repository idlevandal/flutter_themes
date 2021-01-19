import 'package:flutter/material.dart';

class AppTheme {

  AppTheme._();

  static Color _iconColor = Color(0XFF2B2B2B);

  static const Color _lightPrimaryColor = Color(0XFFFF9800);
  static const Color _lightPrimaryVariantColor = Color(0XFFFFA726);
  static const Color _lightSecondaryColor = Color(0XFFF4F4F4);
  static const Color _lightOnPrimaryColor = Colors.black;

  static const Color _darkPrimaryColor = Colors.black;
  static const Color _darkSecondaryColor = Colors.white;
  static const Color _darkOnPrimaryColor = Colors.white;

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightSecondaryColor,
    appBarTheme: AppBarTheme(
      color: _lightPrimaryColor,
      iconTheme: IconThemeData(
        color: Colors.white
      )
    ),
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      primaryVariant: _lightPrimaryVariantColor,
      secondary: _lightSecondaryColor,
      onPrimary: _lightOnPrimaryColor,
    ),
    iconTheme: IconThemeData(
      color: _iconColor,
    ),
    textTheme: _lightTextTheme,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _lightPrimaryVariantColor,
    )
  );

  static final TextTheme _lightTextTheme = TextTheme(
    headline2: _lightScreenHeadingTextStyle,
    bodyText1: _lightScreenTaskNameTextStyle,
    bodyText2: _lightTaskDurationTextStyle, // listTile subtitle uses bodyText2
  );

  static final TextStyle _lightScreenHeadingTextStyle = TextStyle(fontSize: 48.0, color: _lightOnPrimaryColor);
  static final TextStyle _lightScreenTaskNameTextStyle = TextStyle(fontSize: 20.0, color: _lightOnPrimaryColor);
  static final TextStyle _lightTaskDurationTextStyle = TextStyle(fontSize: 16.0, color: Colors.grey);

  // dark theme
  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: _darkSecondaryColor,
      appBarTheme: AppBarTheme(
          color: _darkPrimaryColor,
          iconTheme: IconThemeData(
              color: Colors.white
          )
      ),
      colorScheme: ColorScheme.dark(
        primary: _darkPrimaryColor,
        primaryVariant: _darkPrimaryColor,
        secondary: _darkSecondaryColor,
        onPrimary: _darkOnPrimaryColor,
      ),
      iconTheme: IconThemeData(
        color: _iconColor,
      ),
      textTheme: _darkTextTheme,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _darkPrimaryColor,
      )
  );

  static final TextTheme _darkTextTheme = TextTheme(
    headline2: _darkScreenHeadingTextStyle,
    bodyText1: _darkScreenTaskNameTextStyle,
    bodyText2: _darkTaskDurationTextStyle, // listTile subtitle uses bodyText2
  );

  static final TextStyle _darkScreenHeadingTextStyle = TextStyle(fontSize: 48.0, color: _darkOnPrimaryColor);
  static final TextStyle _darkScreenTaskNameTextStyle = TextStyle(fontSize: 20.0, color: _darkOnPrimaryColor);
  static final TextStyle _darkTaskDurationTextStyle = TextStyle(fontSize: 16.0, color: Colors.grey);

}
import 'package:flutter/material.dart';

class AppTheme {

  AppTheme._();

  static Color _iconColor = Color(0XFF2B2B2B);

  static const Color _lightPrimaryColor = Color(0XFFFF9800);
  static const Color _lightPrimaryVariantColor = Color(0XFFFFA726);
  static const Color _lightSecondaryColor = Color(0XFFF4F4F4);
  static const Color _lightOnPrimaryColor = Colors.black;

  static const Color _darkPrimaryColor = Colors.white24;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkSecondaryColor = Colors.white;
  static const Color _darkOnPrimaryColor = Colors.white;

  // LIGHT THEME 💡
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
    bodyText2: _lightScreenTaskDurationTextStyle, // listTile subtitle uses bodyText2
  );

  static final TextStyle _lightScreenHeadingTextStyle = TextStyle(fontSize: 48.0, color: _lightOnPrimaryColor);
  static final TextStyle _lightScreenTaskNameTextStyle = TextStyle(fontSize: 20.0, color: _lightOnPrimaryColor);
  static final TextStyle _lightScreenTaskDurationTextStyle = TextStyle(fontSize: 16.0, color: Colors.grey);


  // DARK THEME 🌚
  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: _darkPrimaryVariantColor,
      appBarTheme: AppBarTheme(
          color: _darkPrimaryVariantColor,
          iconTheme: IconThemeData(
              color: _darkOnPrimaryColor,
          )
      ),
      colorScheme: ColorScheme.dark(
        primary: Colors.white24,
        // primaryVariant: _darkPrimaryColor,
        secondary: _darkSecondaryColor,
        onPrimary: _darkOnPrimaryColor,
      ),
      iconTheme: IconThemeData(
        color: Colors.grey,
      ),
      textTheme: _darkTextTheme,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _lightPrimaryColor,
      )
  );

  static final TextTheme _darkTextTheme = TextTheme(
    headline2: _darkScreenHeadingTextStyle,
    bodyText1: _darkScreenTaskNameTextStyle,
    bodyText2: _darkScreenTaskDurationTextStyle, // listTile subtitle uses bodyText2
  );

  // copyWith overrides the
  static final TextStyle _darkScreenHeadingTextStyle = _lightScreenHeadingTextStyle.copyWith(color: _darkOnPrimaryColor);
  static final TextStyle _darkScreenTaskNameTextStyle = _lightScreenTaskNameTextStyle.copyWith(color: _darkOnPrimaryColor);
  static final TextStyle _darkScreenTaskDurationTextStyle = _lightScreenTaskDurationTextStyle;

}
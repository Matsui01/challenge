import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: AppTheme.primarySwatch,
  accentColor: AppTheme.accentColor,
  scaffoldBackgroundColor: AppTheme.scaffoldBackgroundColor,
  primaryColorDark: AppTheme.primaryColorDark,
  backgroundColor: AppTheme.background,
  accentTextTheme: TextTheme(),
  appBarTheme: AppBarTheme(
    backgroundColor: AppTheme.background,
  ),
  iconTheme: IconThemeData(color: AppTheme.primaryColorDark, size: iconSize),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(AppTheme.primarySwatch),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
      // padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
      //   (Set<MaterialState> states) => EdgeInsets.zero,
      // ),
    ),
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Color(0xFF666666)),
    bodyText2: TextStyle(color: Color(0xFF666666)),
    subtitle1: TextStyle(color: Color(0xFF000000)),
    subtitle2: TextStyle(color: Color(0xFF000000)),
    headline1: TextStyle(color: Color(0xFF000000)),
    headline2: TextStyle(color: Color(0xFF000000)),
    headline3: TextStyle(color: Color(0xFF000000)),
    headline4: TextStyle(color: Color(0xFF000000)),
    headline5: TextStyle(color: Color(0xFF000000)),
    headline6: TextStyle(color: Color(0xFF000000)),
  ),
);

final ThemeData darkTheme = ThemeData();

final double spacingSize = 20.0;

final double spacingSize1 = 13.0;

final double iconSize = 24.0;

class AppTheme {
  static const _primarySwatchValue = 0xFFDBAD69; // BEJE

  static const _backgroundValue = 0xFFFFFFFF; // WHITE

  static const _accentColorValue = 0xFFFFFFFF; // WHITE

  static const _scaffoldBackgroundColorValue = 0xFFFFFFFF; // WHITE

  static const _primaryColorDarkValue = 0xFF000000; // BLACK

  static const MaterialColor primarySwatch = const MaterialColor(
    _primarySwatchValue,
    const <int, Color>{
      50: const Color(0xFFDBAD69),
      100: const Color(0xFFDBAD69),
      200: const Color(0xFFDBAD69),
      300: const Color(0xFFDBAD69),
      400: const Color(0xFFDBAD69),
      500: const Color(_primarySwatchValue),
      600: const Color(0xFFDBAD69),
      700: const Color(0xFFDBAD69),
      800: const Color(0xFFDBAD69),
      900: const Color(0xFFDBAD69),
    },
  );

  static const MaterialColor background = const MaterialColor(
    _backgroundValue,
    const <int, Color>{
      50: const Color(0xFFEDF6FF),
      100: const Color(0xFFFFFFFF),
      200: const Color(0xFFFFFFFF),
      300: const Color(0xFFFFFFFF),
      400: const Color(0xFFFFFFFF),
      500: const Color(_backgroundValue),
      600: const Color(0xFFFFFFFF),
      700: const Color(0xFFFFFFFF),
      800: const Color(0xFFFFFFFF),
      900: const Color(0xFFFFFFFF),
    },
  );

  static const MaterialColor accentColor = const MaterialColor(
    _accentColorValue,
    const <int, Color>{
      50: const Color(0xFFEDF6FF),
      100: const Color(0xFFEDF6FF),
      200: const Color(0xFFEDF6FF),
      300: const Color(0xFFEDF6FF),
      400: const Color(0xFFEDF6FF),
      500: const Color(_accentColorValue),
      600: const Color(0xFFEDF6FF),
      700: const Color(0xFFEDF6FF),
      800: const Color(0xFFEDF6FF),
      900: const Color(0xFFEDF6FF),
    },
  );

  static const MaterialColor scaffoldBackgroundColor = const MaterialColor(
    _scaffoldBackgroundColorValue,
    const <int, Color>{
      50: const Color(0xFFEDF6FF),
      100: const Color(0xFFEDF6FF),
      200: const Color(0xFFEDF6FF),
      300: const Color(0xFFEDF6FF),
      400: const Color(0xFFEDF6FF),
      500: const Color(_scaffoldBackgroundColorValue),
      600: const Color(0xFFEDF6FF),
      700: const Color(0xFFEDF6FF),
      800: const Color(0xFFEDF6FF),
      900: const Color(0xFFEDF6FF),
    },
  );

  static const MaterialColor primaryColorDark = const MaterialColor(
    _primaryColorDarkValue,
    const <int, Color>{
      50: const Color(0xFFf5f5f5),
      100: const Color(0xFFe9e9e9),
      200: const Color(0xFFd9d9d9),
      300: const Color(0xFFc4c4c4),
      400: const Color(0xFF9d9d9d),
      500: const Color(0xFF7b7b7b),
      600: const Color(0xFF555555),
      700: const Color(0xFF434343),
      800: const Color(0xFF262626),
      900: const Color(_primaryColorDarkValue),
    },
  );
}

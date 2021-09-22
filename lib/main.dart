
import 'package:flutter/material.dart';
import 'package:matsui/app/home/home_page.dart';
import 'package:matsui/singleton.dart';
import 'app/home/controllers/home.dart';
import 'app_theme.dart';

void main() {
  // Temporario
  WidgetsFlutterBinding.ensureInitialized();
  final database = "database";
  Home().init();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Singleton().navigatorKey,
      title: 'Challenge',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


/*
import 'package:flutter/material.dart';
import 'package:vepo/fonts.gen.dart';

import 'theme_utils.dart';

MaterialColor primarySwatch = generateMaterialColor(primaryColorMid);
MaterialColor lightGreenSwatch = generateMaterialColor(lightGreenColorMid);
MaterialColor accentSwatch = generateMaterialColor(accentColor);

const primaryColorMid = Color(0xFF379e97);
const lightGreenColorMid = Color(0xFF5ccc89);
const darkBackgroundColor = Color(0xff303030);
const accentColor = Color(0xff3F51B5);
const errorColor = Color(0xffb03e3e);

Color initialGradientColor = lightGreenSwatch[300];
Color endGradientColor = primarySwatch[900];
Color blueText = lightGreenSwatch[500];

ThemeData homeTheme = ThemeData(
  accentColor: primaryColorMid,
  primarySwatch: primarySwatch,
  colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primarySwatch[500],
      secondary: accentSwatch[500],
      surface: Colors.white,
      background: primarySwatch,
      error: Colors.red[50],
      onBackground: Colors.white,
      onError: errorColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: blueText,
      primaryVariant: Colors.white,
      secondaryVariant: Colors.white),
  visualDensity: VisualDensity.standard,
  canvasColor: primarySwatch,
  fontFamily: FontFamily.varelaRound,
  buttonColor: Colors.white,
  errorColor: errorColor,
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    alignLabelWithHint: true,
    labelStyle: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        fontFamily: FontFamily.varelaRound,
        color: Colors.white.withOpacity(0.7)),
    hintStyle: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        fontFamily: FontFamily.varelaRound,
        color: Colors.white.withOpacity(0.7)),
    border: const OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    contentPadding: const EdgeInsets.symmetric(
      vertical: 22,
      horizontal: 26,
    ),
  ),
  buttonTheme: const ButtonThemeData(
      height: 50,
      minWidth: 200,
      disabledColor: Colors.blueGrey,
      colorScheme: ColorScheme.light(primary: Colors.white)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: TextButton.styleFrom(
        primary: endGradientColor,
        onSurface: Colors.white,
        backgroundColor: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        minimumSize: const Size(200, 50),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
        elevation: 20,
        textStyle: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: blueText,
            fontFamily: FontFamily.hind)),
  ),
  textTheme: TextTheme(
      headline1: const TextStyle(
          fontSize: 36.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: FontFamily.varelaRound),
      headline2: TextStyle(
          fontSize: 55.0,
          fontWeight: FontWeight.bold,
          color: primarySwatch[900].withOpacity(0.4),
          fontFamily: FontFamily.varelaRound),
      subtitle1: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          fontFamily: FontFamily.varelaRound,
          color: Colors.white.withOpacity(0.7)),
      caption: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w600,
          fontFamily: FontFamily.hind,
          color: Colors.white.withOpacity(0.7)),
      button: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: blueText,
          fontFamily: FontFamily.hind),
      bodyText2: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          fontFamily: FontFamily.varelaRound,
          color: primaryColorMid)),
);
*/
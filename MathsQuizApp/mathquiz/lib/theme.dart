import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

var appTheme = ThemeData(
    fontFamily: GoogleFonts.rubik().fontFamily,
    backgroundColor: const Color.fromRGBO(32, 35, 42, 10),
    bottomAppBarTheme:
        const BottomAppBarTheme(color: Color.fromRGBO(32, 35, 42, 10)),
    appBarTheme: const AppBarTheme(color: Color.fromRGBO(32, 35, 42, 10)),
    textTheme: const TextTheme(
      bodyText1: TextStyle(fontSize: 18),
      bodyText2: TextStyle(fontSize: 16),
      button: TextStyle(
        letterSpacing: 1.5,
        fontWeight: FontWeight.bold,
      ),
      headline1: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      subtitle1: TextStyle(color: Color.fromRGBO(79, 138, 139, 10)),
    ),
    brightness: Brightness.dark,
    buttonTheme: const ButtonThemeData());

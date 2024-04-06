import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Color.fromARGB(255, 249, 249, 249),
    primary: Color.fromARGB(255, 250, 198, 198),
    onPrimary: Colors.white,
    secondary: Color.fromARGB(128, 109, 41, 50),
  ),
  primaryColor: Colors.black,

);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Color(0xfc171616),
    primary: Color.fromARGB(255, 250, 198, 198),
    onPrimary: Colors.white,
    secondary: Color.fromARGB(128, 109, 41, 50),
  ),
  primaryColor: Colors.white,
);
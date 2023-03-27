import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    primarySwatch: myColor,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme:
        ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: myColor,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme:
        ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
  );
}

const MaterialColor myColor = MaterialColor(0xFFFFCD00, <int, Color>{
  50: Color(0xFFFFCD00),
  100: Color(0xFFFFCD00),
  200: Color(0xFFFFCD00),
  300: Color(0xFFFFCD00),
  400: Color(0xFFFFCD00),
  500: Color(0xFFFFCD00),
  600: Color(0xFFFFCD00),
  700: Color(0xFFFFCD00),
  800: Color(0xFFFFCD00),
  900: Color(0xFFFFCD00),
});

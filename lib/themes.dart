import 'package:flutter/material.dart';

final setLightTheme = _buildLightTheme();
final setDarkTheme = _buildDarkTheme();

ThemeData _buildLightTheme() {
  return ThemeData(
    primarySwatch: Colors.green,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFE5E5E5),
    accentColor: Colors.green,
    bottomAppBarColor: const Color(0xFFE5E5E5),
    cardColor: Colors.black87,
    textTheme: TextTheme(
        headline6: TextStyle(color: Colors.white, fontSize: 12),
        headline3: TextStyle(color: Colors.white, fontSize: 12)),
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
  );
}

ThemeData _buildDarkTheme() {
  return ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    accentColor: Colors.white,
    cardColor: Colors.white,
    bottomAppBarColor: const Color(0xFF212121),
    textTheme: TextTheme(
        headline6: TextStyle(color: Colors.grey, fontSize: 12),
        headline3: TextStyle(color: Colors.grey, fontSize: 12)),
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
  );
}

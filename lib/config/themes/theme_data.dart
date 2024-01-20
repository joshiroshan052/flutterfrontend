import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primarySwatch: Colors.amber,
    scaffoldBackgroundColor: Colors.grey[200],
    fontFamily: 'Montserrat',
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    )),
  );
}

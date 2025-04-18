import 'package:flutter/material.dart';

class AppTheme {

  static final ThemeData greenFinanceTheme = ThemeData(
    primaryColor: const Color(0xFF4CAF50),
    primaryColorLight: const Color(0xFFC8E6C9),
    primaryColorDark: const Color(0xFF087F23),

    colorScheme: const ColorScheme.light(
      primary: Color(0xFF4CAF50),
      secondary: Color(0xFF81C784),
      error: Color(0xFFD32F2F),
      surface: Color(0xFFF1F8E9),
    ),

    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontFamily: 'Roboto',
      ),
      // Large header
      titleMedium: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontFamily: 'Roboto',
      ),
      // Intermediate titles
      bodyLarge: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: Color(0xFF087F23),
        fontFamily: 'Roboto',
      ),
      // Main text
      bodyMedium: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: Colors.black54,
        fontFamily: 'Roboto',
      ),
      bodySmall: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: Colors.white,
        fontFamily: 'Roboto',
      ), // Subtitles or less relevant content
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF4CAF50),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFFF1F8E9),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF4CAF50)),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF087F23), width: 2.0),
      ),
    ),

    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF4CAF50),
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),

    // Icons
    iconTheme: const IconThemeData(color: Color(0xFF087F23)),

    // Dividers and borders
    dividerColor: const Color(0xFFBDBDBD),
  );

  static final ThemeData greenFinanceDarkTheme = ThemeData(
    // Primary colors
    primaryColor: const Color(0xFF388E3C),
    primaryColorLight: const Color(0xFF81C784),
    primaryColorDark: const Color(0xFF1B5E20),

    // Secondary colors and accents
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF388E3C),
      secondary: Color(0xFF81C784),
      error: Color(0xFFD32F2F),
      surface: Color(0xFF2C2C2C),
    ),

    // Typography
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'Roboto',
      ),
      titleMedium: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'Roboto',
      ),
      bodyLarge: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: Color(0xFF81C784),
        fontFamily: 'Roboto',
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: Colors.white70,
        fontFamily: 'Roboto',
      ),
      bodySmall: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: Colors.white70,
        fontFamily: 'Roboto',
      ),
    ),

    // Buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF388E3C),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    ),

    // Text fields
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFF2C2C2C),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF388E3C)),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF1B5E20), width: 2.0),
      ),
    ),

    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF388E3C),
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),

    // Icons
    iconTheme: const IconThemeData(color: Color(0xFF1B5E20)),
  );
}

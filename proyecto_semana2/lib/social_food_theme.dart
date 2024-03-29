import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialFoodTheme {
  static TextTheme lightTextTheme = TextTheme(
      bodyLarge: GoogleFonts.openSans(
          fontSize: 14.0, fontWeight: FontWeight.w700, color: Colors.black),
      displayLarge: GoogleFonts.openSans(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
      displayMedium: GoogleFonts.openSans(
          fontSize: 21.0, fontWeight: FontWeight.w700, color: Colors.black),
      displaySmall: GoogleFonts.openSans(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
      titleLarge: GoogleFonts.openSans(
          fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.black));

  //Texto Modo Oscuro
  static TextTheme darkTextTheme = TextTheme(
      bodyLarge: GoogleFonts.openSans(
          fontSize: 14.0, fontWeight: FontWeight.w700, color: Colors.white),
      displayLarge: GoogleFonts.openSans(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
      displayMedium: GoogleFonts.openSans(
          fontSize: 21.0, fontWeight: FontWeight.w700, color: Colors.white),
      displaySmall: GoogleFonts.openSans(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
      titleLarge: GoogleFonts.openSans(
          fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white));

  static ThemeData lightTheme(){
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => Colors.black)
      ),

      appBarTheme: AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.green
      ),

      textTheme: lightTextTheme,
    );
  }

  static ThemeData darkTheme(){
    return ThemeData(
      brightness: Brightness.dark,
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.black)
      ),

      appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.grey
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Colors.grey
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.green
      ),

      textTheme: darkTextTheme,
    );
  }
}

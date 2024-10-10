import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myThemeData() {
  return ThemeData(
    primaryColor: const Color(0xfff68f64),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.urbanist(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: GoogleFonts.urbanist(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.urbanist(
        color: const Color(0xff575757),
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: GoogleFonts.urbanist(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xfff68f64)),
      buttonColor: const Color(0xfff68f64),
    ),
  );

}

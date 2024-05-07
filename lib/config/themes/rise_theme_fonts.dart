import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';

class RiseTheme {
  static ThemeData get themeData {
    return ThemeData(
      colorScheme: lightColorScheme,
      textTheme: _textTheme,
    );
  }
  
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromRGBO(20, 23, 31, 1),
    onPrimary: Color.fromRGBO(41, 47, 54, 1),
    secondary: Color.fromRGBO(255, 255, 255, 1),
    onSecondary: Color.fromRGBO(113, 113, 113, 1),
    tertiary: Color.fromRGBO(77, 77, 77, 1),
    onTertiary: Color.fromRGBO(245, 247, 250, 1),
    error: Color(0xFFF22525),
    onError: Color.fromRGBO(66, 133,244, 1),
    background: Color.fromRGBO(255, 255, 255, 1),
    onBackground: Color.fromRGBO(145, 160, 165, 1),
    surface: Color.fromRGBO(41, 47, 54, 1),
    onSurface: Color.fromRGBO(66, 133,244, 1),
    outline: Color.fromRGBO(77, 77, 77, 1),
    outlineVariant: Color.fromRGBO(41, 47, 54, 1),
    surfaceTint: Color.fromRGBO(245, 247, 250, 1),
  );
  
  static TextTheme getTextTheme(BuildContext context) {
    Locale currentLocale = context.locale;
    if (currentLocale.languageCode == 'th') {
      return _textThemeThai;
    } else {
      return _textTheme;
    }
  }

  static final TextTheme _textTheme = TextTheme(
    displayLarge: GoogleFonts.workSans(
      fontWeight: FontWeight.w600,
      fontSize: 72,
    ),
    displayMedium: GoogleFonts.workSans(
      fontWeight: FontWeight.w600,
      fontSize: 36,
    ),
    displaySmall: GoogleFonts.workSans(
      fontWeight: FontWeight.w600,
      fontSize: 25,
    ),
    headlineLarge: GoogleFonts.workSans(
      fontWeight: FontWeight.w600,
      fontSize: 22,
    ),
    headlineMedium: GoogleFonts.workSans(
      fontWeight: FontWeight.w600,
      fontSize: 20,
    ),
    headlineSmall: GoogleFonts.workSans(
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
    titleLarge: GoogleFonts.workSans(
      fontWeight: FontWeight.w500,
      fontSize: 22,
    ),
    titleMedium: GoogleFonts.workSans(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    titleSmall: GoogleFonts.workSans(
      fontWeight: FontWeight.w400,
      fontSize: 24,
    ),
    bodyLarge: GoogleFonts.workSans(
      fontWeight: FontWeight.w400,
      fontSize: 20,
    ),
    bodyMedium: GoogleFonts.workSans(
      fontWeight: FontWeight.w400,
      fontSize: 18,
    ),
    bodySmall: GoogleFonts.workSans(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    labelLarge: GoogleFonts.workSans(
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    labelMedium: GoogleFonts.jost(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
    labelSmall: GoogleFonts.workSans(
      fontWeight: FontWeight.w400,
      fontSize: 28.0,
    ),
  );

  static final TextTheme _textThemeThai = TextTheme(
    displayLarge: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w600,
      fontSize: 72,
    ),
    displayMedium: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w600,
      fontSize: 36,
    ),
    displaySmall: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w600,
      fontSize: 25,
    ),
    headlineLarge: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w600,
      fontSize: 22,
    ),
    headlineMedium: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w600,
      fontSize: 20,
    ),
    headlineSmall: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
    titleLarge: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w500,
      fontSize: 22,
    ),
    titleMedium: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    titleSmall: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w400,
      fontSize: 24,
    ),
    bodyLarge: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w400,
      fontSize: 20,
    ),
    bodyMedium: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w400,
      fontSize: 18,
    ),
    bodySmall: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    labelLarge: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    labelMedium: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
    labelSmall: GoogleFonts.ibmPlexSansThai(
      fontWeight: FontWeight.w400,
      fontSize: 28.0,
    ),
  );
}

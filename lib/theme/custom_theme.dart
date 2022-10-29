import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final fontFamily = GoogleFonts.poppins().fontFamily;

const primaryDark = Color(0xffE7FAB7);
const secondaryDark = Color(0xff282933);
const backgroundDark = Color(0xff15141A);
const onBackgroundDark = Colors.white;
const onSecondaryDark = Color(0xff636371);
const errorDark = Color(0xffFAB7B7);

const primaryLight = Color(0xff403EED);
const secondaryLight = Color(0xffF2F4F5);
const backgroundLight = Colors.white;
const onBackgroundLight = Colors.black;
const onSecondaryLight = Color(0xff999DA7);
const errorLight = Color(0xffFC7171);

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData.light().copyWith(
        primaryColor: primaryLight,
        scaffoldBackgroundColor: backgroundLight,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: onBackgroundLight,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: fontFamily,
          ),
          backgroundColor: backgroundLight,
          elevation: 0,
        ),
        textTheme: _textTheme(onBackgroundLight),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryLight,
          backgroundColor: backgroundLight,
          unselectedItemColor: onSecondaryLight,
          selectedLabelStyle: TextStyle(
              fontFamily: fontFamily,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontFamily: fontFamily, fontSize: 12),
        ),
        colorScheme: const ColorScheme.light().copyWith(
            primary: primaryLight,
            secondary: secondaryLight,
            background: backgroundLight,
            onBackground: onBackgroundLight,
            onSecondary: onSecondaryLight,
            error: errorLight));
  }

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
        primaryColor: primaryDark,
        scaffoldBackgroundColor: backgroundDark,
        appBarTheme: AppBarTheme(
          backgroundColor: backgroundDark,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: onBackgroundDark,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: fontFamily,
          ),
        ),
        textTheme: _textTheme(onBackgroundDark),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryDark,
          backgroundColor: backgroundDark,
          unselectedItemColor: onSecondaryDark,
          selectedLabelStyle: TextStyle(
              fontFamily: fontFamily,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontFamily: fontFamily, fontSize: 12),
        ),
        colorScheme: const ColorScheme.dark().copyWith(
            primary: primaryDark,
            secondary: secondaryDark,
            background: backgroundDark,
            onBackground: onBackgroundDark,
            onSecondary: onSecondaryDark,
            error: errorDark));
  }
}

TextTheme _textTheme(Color color) {
  return TextTheme(
    headlineLarge: TextStyle(
      color: color,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily,
    ),
    headlineMedium: TextStyle(
      color: color,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily,
    ),
    headlineSmall: TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily,
    ),
    bodyLarge: TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: fontFamily,
    ),
    bodyMedium: TextStyle(
      color: color,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: fontFamily,
    ),
    bodySmall: TextStyle(
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: fontFamily,
    ),
  );
}

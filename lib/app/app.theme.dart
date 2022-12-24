import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// * List of themes
List<ThemeData> getThemes() {
  return [
    ThemeData(
        backgroundColor: Colors.blue,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.yellow)),
    ThemeData(
        backgroundColor: Colors.white,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.green)),
    ThemeData(
        backgroundColor: Colors.purple,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.green)),
    ThemeData(
        backgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red)),
    ThemeData(
        backgroundColor: Colors.red,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue)),
  ];
}

// * Dark Theme
ThemeData darkTheme =
    ThemeData(brightness: Brightness.dark, backgroundColor: Colors.black87);

// * Light Theme
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: Colors.black,
  primaryColor: const Color.fromRGBO(3, 37, 39, 1),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    color: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black54),
    titleTextStyle: TextStyle(color: Colors.black54),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle:
        TextStyle(fontSize: 14, color: Color.fromARGB(255, 209, 209, 209)),
    hintStyle:
        TextStyle(fontSize: 14, color: Color.fromARGB(255, 209, 209, 209)),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(width: 0.2, color: Color.fromARGB(255, 0, 0, 0)),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(width: 1, color: Color.fromARGB(255, 0, 0, 0)),
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    splashRadius: 0,
    side: const BorderSide(color: Colors.grey, width: 1),
    checkColor: MaterialStateProperty.all(Colors.white),
    fillColor: MaterialStateProperty.all(const Color.fromRGBO(3, 37, 39, 1)),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.black),
      backgroundColor: MaterialStateProperty.all(Colors.white),
    ),
  ),
  textTheme: GoogleFonts.poppinsTextTheme(),
  progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.black),
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(secondary: const Color.fromARGB(255, 73, 73, 73)),
);

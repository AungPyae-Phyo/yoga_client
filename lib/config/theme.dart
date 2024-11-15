import 'package:flutter/material.dart';

import 'constants/colors.dart';

class MyTheme {
  MyTheme._();

  static ThemeData get lightTheme {
    final scheme =
        ColorScheme.fromSeed(seedColor: ColorConst.softBlue).copyWith(
      primary: ColorConst.softBlue,
    );
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: scheme,
      cardTheme: lightCardTheme,
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(100, 48),
          backgroundColor: scheme.primary,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    final darkScheme = const ColorScheme.dark(
      primary: ColorConst.darkSoftBlue,
      secondary: ColorConst.darkTeal,
    ).copyWith(
      surface: Colors.black,
    );

    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      colorScheme: darkScheme,
      cardTheme: darkCardTheme,
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(100, 48),
          backgroundColor: darkScheme.primary,
        ),
      ),
    );
  }

  static const lightCardTheme = CardTheme(
    color: Colors.white,
    elevation: 0.5,
  );

  static const darkCardTheme = CardTheme(
    color: Color.fromARGB(255, 54, 57, 56), // Darker card background
    elevation: 0.5,
    
  );
}

const cardTitle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w600,
);

const lable = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
);

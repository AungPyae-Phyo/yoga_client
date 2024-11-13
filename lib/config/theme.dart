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

  static const lightCardTheme = CardTheme(
    color: Colors.white,
    elevation: 0.5,
  );
}

import 'package:flutter/material.dart';
import 'package:fruit_salad/theme/theme_color.dart';

class DarkLightTheme {
  static ThemeData themeLight() {
    return ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: const ColorScheme.light(),
        primaryColor: ThemeColor.gold,
        appBarTheme:
            AppBarTheme(backgroundColor: ThemeColor.appbar, elevation: 5));
  }

  static ThemeData themeDark() {
    return ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: const ColorScheme.dark(),
        primaryColor: ThemeColor.gold,
        appBarTheme:
            AppBarTheme(backgroundColor: ThemeColor.appbar, elevation: 5));
  }
}

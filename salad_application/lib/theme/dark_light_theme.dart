part of '../import/import.dart';

class DarkLightTheme {
  static ThemeData themeLight(BuildContext context) {
    return ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: const ColorScheme.light(),
        primaryColor: ThemeColor.gold,
        navigationBarTheme:
            NavigationBarThemeData(backgroundColor: ThemeColor.gold),
        appBarTheme: AppBarTheme(
            backgroundColor: ThemeColor.appbar,
            elevation: 5,
            iconTheme: IconThemeData(color: ThemeColor.green)),
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: Colors.black,
              bodyColor: Colors.black,
            ),
        buttonTheme: ButtonThemeData(
            buttonColor: ThemeColor.gold, textTheme: ButtonTextTheme.primary));
  }

  static ThemeData themeDark(BuildContext context) {
    return ThemeData.dark(useMaterial3: true).copyWith(
        navigationBarTheme:
            NavigationBarThemeData(backgroundColor: ThemeColor.gold),
        colorScheme: const ColorScheme.dark(),
        primaryColor: ThemeColor.gold,
        appBarTheme: AppBarTheme(
          backgroundColor: ThemeColor.appbar,
          elevation: 5,
          iconTheme: IconThemeData(color: ThemeColor.green),
        ),
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: Colors.white,
              bodyColor: Colors.white,
            ),
        buttonTheme: ButtonThemeData(
            buttonColor: ThemeColor.gold, textTheme: ButtonTextTheme.primary));
  }
}

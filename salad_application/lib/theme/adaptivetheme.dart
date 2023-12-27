part of '../import/import.dart';

class AdaptiveThemeWidget extends StatelessWidget {
  const AdaptiveThemeWidget({super.key, required this.builder});
  final Widget Function(ThemeData, ThemeData) builder;
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: DarkLightTheme.themeLight(context),
        dark: DarkLightTheme.themeDark(context),
        initial: AdaptiveThemeMode.system,
        builder: builder);
  }
}

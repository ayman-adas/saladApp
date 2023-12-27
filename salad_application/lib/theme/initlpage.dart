part of '../import/import.dart';

class ThemeInitilPage extends StatelessWidget {
  const ThemeInitilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeScreen(
        child: ThemeRestart(
      child: AdaptiveThemeWidget(
          builder: (light, dark) => MaterialWidget(light: light, dark: dark)),
    ));
  }
}

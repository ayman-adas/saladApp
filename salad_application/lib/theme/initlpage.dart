part of '../import/import.dart';

class ThemeInitilPage extends StatelessWidget {
  const ThemeInitilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: DarkLightTheme.themeLight(context),
      darkTheme: DarkLightTheme.themeDark(context),
      home: const VHome(),
    );
  }
}

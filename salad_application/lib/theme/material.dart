part of '../import/import.dart';

class MaterialWidget extends StatelessWidget {
  const MaterialWidget({super.key, required this.dark, required this.light});
  final ThemeData light;
  final ThemeData dark;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => MLanguages.nameproject.tr(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: light,
      darkTheme: dark,
      initialRoute: MRouteName.initalPage,
      routes: MRouteName.route,
    );
  }
}

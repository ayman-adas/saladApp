import 'package:flutter/material.dart';
import 'package:fruit_salad/import/import.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:fruit_salad/theme/dark_light_theme.dart';

void main() async {
  await Future.delayed((const Duration(seconds: 2)), () {
    FlutterNativeSplash.remove();
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DarkLightTheme.themeLight(),
      darkTheme: DarkLightTheme.themeDark(),
      home: const VHome(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fruit_salad/import/import.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await Future.delayed((const Duration(seconds: 2)), () {
    FlutterNativeSplash.remove();
  });
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('en'),
        child: MultiProvider(providers: [
          ChangeNotifierProvider(create: (_) => CPacketList()),
          ChangeNotifierProvider(create: (_) => MPage3()),
          ChangeNotifierProvider(create: (_) => VThemeChange()),
        ], child: const ThemeInitilPage())),
  );
}

part of '../import/import.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: child,
    );
  }
}

part of "../import/import.dart";

class ThemeTestphone {
  static bool isIos(BuildContext context) {
    return (Theme.of(context).platform == TargetPlatform.iOS) ||
        (Theme.of(context).platform == TargetPlatform.macOS) ||
        (Theme.of(context).platform == TargetPlatform.windows);
  }
}

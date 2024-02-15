part of './../import/import.dart';
// ignore_for_file: unused_element, non_constant_identifier_names

class WSnackBar {
  // Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar .
  static void snack(BuildContext context, String content) {
    dynamic showSnackBar(
        dynamic Function({dynamic backgroundColor, dynamic content})
            SnackBars) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:
              Text(content.tr(), style: const TextStyle(color: Colors.white)),
          backgroundColor: DarkLightTheme.isDark(context)
              ? ThemeColor.green
              : ThemeColor.red,
        ),
      );
      showSnackBar(({backgroundColor, content}) => null);
    }
  }
}

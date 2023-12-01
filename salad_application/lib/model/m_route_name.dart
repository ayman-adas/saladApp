part of '../import/import.dart';

class MRouteName {
  static const String home = "home";
  static const String page1 = "page1";
  static const String page2 = "page2";
  static const String page3 = "page3";
  static const String packet = "packet";
  static const String networkTest = "neworkTest";
  static const String about = "about";

  static Map<String, WidgetBuilder> route = {
    home: (context) => const VHome(),
    page1: (context) => const VPage1(),
    page2: (context) => const VPage2(),
    page3: (context) => VPage3(
          name: textController.value.text,
        ),
    about: (context) => const VAbout(),
    packet: (context) => const VPacket(),
    networkTest: (context) => const VTestNetwok(),
  };
}

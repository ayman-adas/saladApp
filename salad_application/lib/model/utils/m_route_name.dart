part of '../../import/import.dart';

///[MRouteName] for pushnamed remote controll
class MRouteName {
  static const String home = "home";
  static const String login = "login";
  static const String signup = "signup";

  static const String page1 = "page1";
  static const String page2 = "page2";
  static const String salad = "salad";
  static const String packet = "packet";
  static const String networkTest = "neworkTest";
  static const String about = "about";
  static const String assistance = "assistance";
  static const String forgetPass = "forgetPass";
  static const String search = "search";

  static const String signout = "signout";
  static const String themeChange = "themeChange";
  static const String langhange = "langChange";
  static const String initalPage = "initPage";
  static const String saladUpload = "saladUpload";
  static const String questionAnswer = "questionAnswer";

// ViewSearch
  static Map<String, WidgetBuilder> route = {
    home: (context) => const VHome(),
    initalPage: (context) => const TFirebase(),
    login: (context) => const VLogin(),
    signup: (context) => const ViewRegister(),
    page1: (context) => const VPage1(),
    page2: (context) => const VPage2(),
    salad: (context) => const VSalad(),
    about: (context) => const VAbout(),
    forgetPass: (context) => const ViewForgotPass(),
    assistance: (context) => const VAssistance(),
    packet: (context) => const VPasketBody(),
    // networkTest: (context) => const VTestNetwok(),
    themeChange: (context) => const VThemeChange(),
    langhange: (context) => const VLangChange(),
    signout: (context) => WSignout(
          title: Text(MLanguages.signOut.tr()),
          content: Text(MLanguages.signOutMsg.tr()),
        ),
    saladUpload: (context) => const ViewSaladUpload(),
    questionAnswer: (context) => const VQuestionAnswer(),

    search: (context) => ViewSearch()
  };
}
// VQuestionAnswer
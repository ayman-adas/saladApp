part of './../import/import.dart';

class WidgetToast {
  /// [buildToast] show toast custom
  static buildToast({
    required BuildContext context,
    required String msg,
    bool translation = true,
  }) async {
    return await Fluttertoast.showToast(
      msg: translation ? msg.tr() : msg,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: DarkLightTheme.isDark(context)
          ? ThemeColor.purple
          : ThemeColor.blueMagenta,
      textColor: ThemeColor.white,
      fontSize: MDime.l.sp,
    );
  }
}

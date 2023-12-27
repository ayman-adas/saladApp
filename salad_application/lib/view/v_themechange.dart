part of '../import/import.dart';

// ignore: must_be_immutable
class VThemeChange extends StatelessWidget with ChangeNotifier {
  VThemeChange({super.key});

  @override
  Widget build(BuildContext context) {
    IconData icon(BuildContext context) {
      return ThemeTestphone.isIos(context)
          ? MIcons.arrowbaccurp
          : MIcons.arrowbac;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(icon(context)),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: WTLChange(
                height: MDime.d4 * 690 - 730,
                image: MSvge.helal,
                data: MLanguages.dark,
                onTap: () {
                  if (!DarkLightTheme.isDark(context)) {
                    AdaptiveTheme.of(context).setDark();
                    notifyListeners();
                  }
                }),
          ),
          MDime.sm.horizontalSpace,
          Expanded(
            child: WTLChange(
                height: MDime.d4 * 690 - 730,
                image: MSvge.shams,
                data: MLanguages.light,
                onTap: () {
                  if (DarkLightTheme.isDark(context)) {
                    AdaptiveTheme.of(context).setLight();
                    notifyListeners();
                  }
                }),
          )
        ],
      ),
    );
  }
}

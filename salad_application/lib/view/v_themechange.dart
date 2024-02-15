part of '../import/import.dart';

// ignore: must_be_immutable
class VThemeChange extends StatelessWidget {
  const VThemeChange({super.key});

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
                  DarkLightTheme changeTheme =
                      Provider.of<DarkLightTheme>(context, listen: false);
                  if (!DarkLightTheme.isDark(context)) {
                    changeTheme.setDarkLight(context);
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
                  DarkLightTheme changeTheme =
                      Provider.of<DarkLightTheme>(context, listen: false);
                  if (DarkLightTheme.isDark(context)) {
                    changeTheme.setDarkLight(context);
                  }
                }),
          )
        ],
      ),
    );
  }
}

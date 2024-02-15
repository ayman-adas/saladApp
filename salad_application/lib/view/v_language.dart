// ignore: must_be_immutable

part of '../import/import.dart';

class VLangChange extends StatelessWidget {
  const VLangChange({super.key});

  @override
  Widget build(BuildContext context) {
    /// [isEnglish] return `true` when lang english
    bool isEnglish(BuildContext context) =>
        context.locale.languageCode == 'en' ? true : false;
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
                height: MDime.d4 * 690 - 830,
                image: MSvge.english,
                data: MLanguages.english,
                onTap: () {
                  if (!isEnglish(context)) {
                    context.setLocale(const Locale('en'));
                    ThemeRestart.reDraw(context);
                  }
                }),
          ),
          MDime.sm.horizontalSpace,
          Expanded(
            child: WTLChange(
                height: MDime.d4 * 690 - 830,
                image: MSvge.arabic,
                data: MLanguages.arabic,
                onTap: () {
                  if (isEnglish(context)) {
                    context.setLocale(const Locale('ar'));
                    ThemeRestart.reDraw(context);
                  }
                }),
          )
        ],
      ),
    );
  }
}

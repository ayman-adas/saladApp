part of '../import/import.dart';

class CErrorMassage extends StatelessWidget {
  const CErrorMassage({
    super.key,
    required this.massage,
  });
  final String massage;
  @override
  Widget build(BuildContext context) {
    //alert for error masseges
    return AlertDialog(content: Text(massage).tr(), actions: <Widget>[
      TextButton(
        style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(ThemeTextStyle.tLarge(context)),
            backgroundColor: MaterialStatePropertyAll(ThemeColor.gold),
            foregroundColor: MaterialStatePropertyAll(
              DarkLightTheme.isDark(context)
                  ? ThemeColor.green
                  : ThemeColor.red,
            )),
        onPressed: () {},
        child: const Text(MLanguages.ok).tr(),
      ),
    ]);
  }
}

// ignore_for_file: must_be_immutable

part of '../import/import.dart';

class CErrorMassage extends StatelessWidget {
   CErrorMassage({
    super.key,
    required this.massage,
    this.callback
  });
  final String massage;
   void Function()? callback;
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
        onPressed: callback,
        child: const Text(MLanguages.ok).tr(),
      ),
    ]);
  }
}

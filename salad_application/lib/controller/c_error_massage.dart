part of '../import/import.dart';

class CErrorMassage extends StatelessWidget {
  const CErrorMassage(
      {super.key, required this.massage, required this.callback});
  final String massage;
  final Function() callback;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(content: Text(massage).tr(), actions: <Widget>[
      TextButton(
        style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(ThemeTextStyle.tLarge(context)),
            backgroundColor: MaterialStatePropertyAll(ThemeColor.gold),
            foregroundColor: MaterialStatePropertyAll(ThemeColor.green)),
        onPressed: callback,
        child: const Text(MLanguages.ok).tr(),
      ),
    ]);
  }
}

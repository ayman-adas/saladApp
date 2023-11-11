part of '../import/import.dart';

class CErrorMassage extends StatelessWidget {
  const CErrorMassage(
      {super.key, required this.massage, required this.callback});
  final String massage;
  final Function() callback;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(content: Text(massage), actions: <Widget>[
      TextButton(
        onPressed: callback,
        child: const Text('OK'),
      ),
    ]);
  }
}

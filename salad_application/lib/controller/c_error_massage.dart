import 'package:flutter/material.dart';

class CErrorMassage extends StatelessWidget {
  const CErrorMassage({super.key, required this.massage});
  final String massage;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(content: Text(massage), actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.pop(context, 'OK'),
        child: const Text('OK'),
      ),
    ]);
  }
}

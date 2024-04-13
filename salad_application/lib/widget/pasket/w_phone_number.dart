// ignore_for_file: library_private_types_in_public_api

part of './../../import/import.dart';

class WidgetPhoneNumber extends StatefulWidget {
  const WidgetPhoneNumber({super.key, required this.controller});
  final PhoneNumberEditingController controller;

  @override
  _WidgetPhoneNumberState createState() => _WidgetPhoneNumberState();
}

class _WidgetPhoneNumberState extends State<WidgetPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MDime.d9 * MDime.xxxxl.w,
      height: MDime.d1 * MDime.xxxl - 19.h,
      child: Column(
        children: <Widget>[
          PhoneNumberField(
            controller: widget.controller,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: MLanguages.phone.tr()),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

part of './../../import/import.dart';

class WIdgetRequestField extends StatelessWidget {
  const WIdgetRequestField(
      {super.key, required this.name, required this.value});
  final String name;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name.tr(), style: ThemeTextStyle.bLarge(context)),
        Text(value)
      ],
    );
  }
}

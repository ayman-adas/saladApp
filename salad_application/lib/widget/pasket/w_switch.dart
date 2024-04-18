// ignore_for_file: must_be_immutable

part of './../../import/import.dart';

class WidgetSwitch extends StatefulWidget {
  const WidgetSwitch({
    super.key,
  });

  @override
  State<WidgetSwitch> createState() => _WidgetSwitchState();
}

class _WidgetSwitchState extends State<WidgetSwitch> {
  @override
  Widget build(BuildContext context) {
    CPasket pasket = Provider.of<CPasket>(context, listen: true);

    return AnimatedRadioButtons(
      backgroundColor: Colors.blueAccent.shade100,
      value: pasket.pasket.myVar ?? 0,
      layoutAxis: Axis.horizontal,
      buttonRadius: 20.0.w,
      items: [
        AnimatedRadioButtonItem(
          label: MLanguages.cash.tr(),
        ),
        AnimatedRadioButtonItem(
          label: MLanguages.visa.tr(),
        )
      ],
      onChanged: (value) {
        setState(() {
          pasket.pasket.myVar = value;
        });
      },
    );
  }
}

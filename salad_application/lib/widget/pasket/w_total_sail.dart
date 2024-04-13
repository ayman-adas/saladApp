part of './../../import/import.dart';

class WidgetTotalSail extends StatelessWidget {
  const WidgetTotalSail({super.key});

  @override
  Widget build(BuildContext context) {
    CDatabase controllerFruit = Provider.of<CDatabase>(context);
    controllerFruit.selectitems;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(MLanguages.totalSails.tr(), style: ThemeTextStyle.bLarge(context)),
        Text("${CDatabase.sailAll}JD")
      ],
    );
  }
}

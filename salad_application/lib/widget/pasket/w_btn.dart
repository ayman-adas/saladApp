part of './../../import/import.dart';

class WidgetPasketBtn extends StatelessWidget {
  const WidgetPasketBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (CDatabase.sailAll != 0) {
          if (context.mounted) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ViewCart(),
                ));
          }
        } else {
          if (context.mounted) {
            WidgetToast.buildToast(
              msg: MLanguages.noItem.tr(),
              context: context,
            );
          }
        }
      },
      child: Container(
          color: const Color.fromARGB(174, 255, 200, 0),
          height: MDime.quarter * 690.h - 70,
          width: double.infinity,
          child: Center(
              child: Text(
            MLanguages.addCart.tr(),
            style: ThemeTextStyle.dSmall(context),
          ))),
    );
  }
}

part of './../../import/import.dart';

class WidgetAuthLogo extends StatelessWidget {
  const WidgetAuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        width: MDime.xxxxl.w,
        height: MDime.xxxxl.w,
        image: const AssetImage("assets/icon.png"),
      ),
    );
  }
}

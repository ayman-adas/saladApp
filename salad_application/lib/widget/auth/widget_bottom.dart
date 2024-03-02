part of './../../import/import.dart';

class WidgetBtn extends StatelessWidget {
  const WidgetBtn({super.key, required this.onTap, required this.title});
  final void Function()? onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColor.gold,
      width: double.infinity,
      height: MDime.xl.h,
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            title,
            style: ThemeTextStyle.hSmall(context)?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

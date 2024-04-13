part of '../import/import.dart';

class CServiceTabs extends StatelessWidget {
  const CServiceTabs(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});
  final IconData icon;
  final String title;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      //icon
      leading: Icon(icon),
      //title
      title: Text(title).tr(),
      //icon color
      iconColor:
          DarkLightTheme.isDark(context) ? ThemeColor.green : ThemeColor.red,
      titleTextStyle: ThemeTextStyle.lLarge(context)?.copyWith(
        color: DarkLightTheme.isDark(context) ? ThemeColor.white : Colors.black,
      ),
      onTap: onTap,
    );
  }
}

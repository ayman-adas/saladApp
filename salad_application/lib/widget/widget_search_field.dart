part of './../import/import.dart';

class WidgetSearchField extends StatelessWidget {
  const WidgetSearchField({super.key, required this.onChanged});
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    //textfield for search
    return TextFormField(
        style: ThemeTextStyle.bLarge(context)?.copyWith(color: Colors.black),
        cursorColor:
            DarkLightTheme.isDark(context) ? ThemeColor.green : ThemeColor.red,
        decoration: InputDecoration(
          hintText: MLanguages.search.tr(),
          focusColor: ThemeColor.black,
          hoverColor: ThemeColor.black,
          border: InputBorder.none,
        ),
        onChanged: onChanged);
  }
}

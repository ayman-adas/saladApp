part of './../import/import.dart';

class Wmassage extends StatelessWidget {
  const Wmassage({super.key, required this.title, required this.content});
  final Widget title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    Widget buttom(
        BuildContext context, String tex, void Function()? onPressed) {
      return ThemeTestphone.isIos(context)
          ? CupertinoTextSelectionToolbarButton.text(
              text: tex.tr(),
              onPressed: onPressed,
            )
          : ElevatedButton(
              onPressed: onPressed,
              child: Text(
                tex.tr(),
                style: ThemeTextStyle.hSmall(context),
              ));
    }

    return AlertDialog.adaptive(
      title: title,
      content: content,
      actions: [
        buttom(context, MLanguages.cancel.tr(), () {
          Navigator.pop(context);
        }),
        buttom(context, MLanguages.ok.tr(), () {
          Navigator.pop(context);
        })
      ],
    );
  }
}

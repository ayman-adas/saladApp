part of "../import/import.dart";

class WSignout extends StatelessWidget {
  const WSignout({super.key, required this.title, required this.content});
  final Widget title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    Widget buttom(
        BuildContext context, String tex, void Function()? onPressed) {
      return ThemeTestphone.isIos(context)
          ? CupertinoTextSelectionToolbarButton.text(
              text: tex,
              onPressed: onPressed,
            )
          : ElevatedButton(
              onPressed: onPressed,
              child: Text(
                tex,
                style: ThemeTextStyle.hSmall(context),
              ));
    }

    return AlertDialog.adaptive(
      title: title,
      content: content,
      actions: [
        buttom(context, "cancel", () {
          Navigator.pop(context);
        }),
        buttom(context, "ok", () {
          Navigator.pop(context);
        })
      ],
    );
  }
}

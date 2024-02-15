part of "../import/import.dart";

class WSignout extends StatelessWidget {
  const WSignout({super.key, required this.title, required this.content});
  final Widget title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    Widget buttom(
        BuildContext context, String tex, void Function()? onPressed) {
      //if phone is ios
      return ThemeTestphone.isIos(context)
          ? CupertinoTextSelectionToolbarButton.text(
              text: tex,
              onPressed: onPressed,
            )
          //for andriod phone
          : ElevatedButton(
              onPressed: onPressed,
              child: Text(
                tex,
                style: ThemeTextStyle.hSmall(context),
              ));
    }

    ///alert dialog adaptive for uoour phone
    return AlertDialog.adaptive(
      title: title,
      content: content,
      actions: [
        buttom(context, MLanguages.cancel.tr(), () {
          Navigator.pop(context);
        }),
        buttom(context, MLanguages.ok.tr(), () {
          ControllerAuth auth =
              Provider.of<ControllerAuth>(context, listen: false);
          auth.signOut();

          ThemeRestart.reDraw(context);
        })
      ],
    );
  }
}

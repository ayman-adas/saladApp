part of './../../import/import.dart';

class WidgetAuthCheckAccount extends StatelessWidget {
  const WidgetAuthCheckAccount({
    super.key,
    required this.firstWord,
    required this.secondWord,
    required this.onTap,
  });
  final String firstWord;
  final String secondWord;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: firstWord.tr(),
        style: ThemeTextStyle.bLarge(context),
        children: [
          const TextSpan(text: ' '),
          TextSpan(
            text: secondWord.tr(),
            style: ThemeTextStyle.tLarge(context)
                ?.copyWith(decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}

part of './../../import/import.dart';
// ignore_for_file: file_names

class WidgetFruitsaladName extends StatelessWidget {
  const WidgetFruitsaladName({super.key, this.isEnglish = true});
  final bool isEnglish;

  @override
  Widget build(BuildContext context) {
    CFruitsalad fruitsalad = Provider.of<CFruitsalad>(context, listen: false);
    developer.log('send data username of fruit salad to provider',
        name: 'widget username');
    return WidgetTextField(
      labelText:
          isEnglish ? MLanguages.saladNameEnglish : MLanguages.saladNameArarbic,
      iconBefore: MIcons.userName,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
      onSaved: isEnglish
          ? fruitsalad.salad.setEnglishName
          : fruitsalad.salad.setArabicName,
    );
  }
}

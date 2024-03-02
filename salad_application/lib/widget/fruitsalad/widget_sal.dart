part of './../../import/import.dart';
// ignore_for_file: file_names

class WidgetFruitsaladSalary extends StatelessWidget {
  const WidgetFruitsaladSalary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CFruitsalad fruitsalad = Provider.of<CFruitsalad>(context, listen: false);
    developer.log('send data salary of fruit salad to provider',
        name: 'widget salary');
    return WidgetTextField(
        keyboardType: TextInputType.number,
        labelText: MLanguages.salary,
        iconBefore: MIcons.userName,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          FormBuilderValidators.maxLength(2)
        ]),
        onSaved: fruitsalad.salad.setsalary);
  }
}

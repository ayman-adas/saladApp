part of './../../import/import.dart';
// ignore_for_file: file_names

class WidgetPasketAdress extends StatelessWidget {
  const WidgetPasketAdress({super.key});

  @override
  Widget build(BuildContext context) {
    CPasket pasket = Provider.of<CPasket>(context, listen: false);
    developer.log('send data adress to provider', name: 'widget adress');
    return WidgetTextField(
      labelText: MLanguages.adress,
      iconBefore: CupertinoIcons.graph_circle,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
      onSaved: pasket.pasket.setAdress,
    );
  }
}

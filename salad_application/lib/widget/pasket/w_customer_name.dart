part of './../../import/import.dart';
// ignore_for_file: file_names

class WidgetPasketCustomerName extends StatelessWidget {
  const WidgetPasketCustomerName({super.key});

  @override
  Widget build(BuildContext context) {
    // CPasket pasket = Provider.of<CPasket>(context, listen: false);
    developer.log('send data adress to provider', name: 'widget adress');
    return WidgetTextField(
      labelText: MLanguages.customerName,
      iconBefore: CupertinoIcons.profile_circled,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
      // onSaved: pasket.pasket.setName,
    );
  }
}

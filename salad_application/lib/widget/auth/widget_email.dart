part of './../../import/import.dart';

class WidgetAuthEmail extends StatelessWidget {
  const WidgetAuthEmail({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerAuth controllerAuth =
        Provider.of<ControllerAuth>(context, listen: false);
    developer.log('send data email to provider', name: 'widget email');
    return WidgetTextField(
      keyboardType: TextInputType.emailAddress,
      labelText: MLanguages.email,
      hintText: MLogin.email,
      iconBefore: MIcons.mail,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.email(),
      ]),
      onSaved: controllerAuth.dataUser.setEmail,
    );
  }
}

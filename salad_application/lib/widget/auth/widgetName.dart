// ignore_for_file: file_names

part of './../../import/import.dart';

class WidgetAuthUsername extends StatelessWidget {
  const WidgetAuthUsername({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerAuth auth = Provider.of<ControllerAuth>(context, listen: false);
    developer.log('send data username to provider', name: 'widget username');
    return WidgetTextField(
      hintText: MLogin.username,
      labelText: MLanguages.username,
      iconBefore: MIcons.userName,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.match(r'^[a-zA-Z\u0600-\u06FF\s]{5,}$',
            errorText: MLanguages.userError.tr()),
      ]),
      onSaved: auth.dataUser.setUserName,
    );
  }
}

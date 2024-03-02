part of './../../import/import.dart';

class WidgetAssistanceDesc extends StatelessWidget {
  const WidgetAssistanceDesc({super.key});

  @override
  Widget build(BuildContext context) {
    CAssisitance asisit = Provider.of<CAssisitance>(context, listen: false);
    developer.log('send data  assistaance description to provider',
        name: 'widget  assistaance description');
    return WidgetTextField(
      maxLines: MDime.sm.toInt(),
      labelText: MLanguages.desc,
      iconBefore: MIcons.description,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
      onSaved: asisit.assistance.setDesc,
    );
  }
}

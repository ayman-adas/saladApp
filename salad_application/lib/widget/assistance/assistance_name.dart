part of './../../import/import.dart';

class WidgetAssistanceName extends StatelessWidget {
  const WidgetAssistanceName({super.key});

  @override
  Widget build(BuildContext context) {
    CAssisitance asisit = Provider.of<CAssisitance>(context, listen: false);
    developer.log('send data assistance name to provider',
        name: 'widget assistance name');
    return WidgetTextField(
      labelText: MLanguages.proplemName,
      iconBefore: MIcons.proplem,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
      onSaved: asisit.assistance.setName,
    );
  }
}

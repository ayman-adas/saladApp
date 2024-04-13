part of './../../import/import.dart';

class WidgetFullName extends StatelessWidget {
  const WidgetFullName({super.key});

  @override
  Widget build(BuildContext context) {
    CPasket pasket = Provider.of<CPasket>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0).w,
      child: Row(children: [
        WidgetTextField(
          width: MDime.d2 * MDime.xxxl.w,
          labelText: MLanguages.firstName.tr(),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          onSaved: pasket.pasket.setFirstName,
        ),
        (MDime.l + MDime.md).horizontalSpace,
        WidgetTextField(
          width: MDime.d2 * MDime.xxxl.w,
          labelText: MLanguages.lastName.tr(),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          onSaved: pasket.pasket.setLastName,
        )
      ]),
    );
  }
}

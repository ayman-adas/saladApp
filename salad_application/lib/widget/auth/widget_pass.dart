part of './../../import/import.dart';

class WidgetAuthPassword extends StatelessWidget {
  const WidgetAuthPassword({
    super.key,
    this.isConfirmPass = false,
    this.isNotWorkChange = false,
  });
  final bool isConfirmPass;
  final bool isNotWorkChange;
  @override
  Widget build(BuildContext context) {
    return Consumer2<ControllerAuthSecurityPass, ControllerAuth>(
        builder: (context, pSecurityPass, auth, child) {
      return WidgetTextField(
        labelText:
            isConfirmPass ? MLanguages.passAssurance : MLanguages.password,
        hintText: isConfirmPass ? '' : MLogin.pass,
        iconBefore: MIcons.pass,
        helperText:
            isConfirmPass ? MLanguages.passAsurError : MLanguages.passError,
        isPass: pSecurityPass.isNotShowPass,
        isShowIconPass: true,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          // pass
          if (!isConfirmPass) FormBuilderValidators.minLength(6),
          if (!isConfirmPass) FormBuilderValidators.maxLength(12),
          // confirm pass
          if (isConfirmPass) FormBuilderValidators.equal(auth.currentPass)
        ]),
        onSaved: auth.dataUser.setPass,
        onChanged: isNotWorkChange ? auth.changeCurrentPass : null,
      );
    });
  }
}

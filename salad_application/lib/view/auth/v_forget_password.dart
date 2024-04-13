// ignore_for_file: use_build_context_synchronously

part of '../../import/import.dart';

class ViewForgotPass extends StatelessWidget {
  const ViewForgotPass({super.key});

  /// [_keyFormForgot] controller Widget `Form`
  static final GlobalKey<FormState> _keyFormForgot = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    /// [spaceVertical]  SizedBox 16 height
    SizedBox spaceVertical = (MDime.md).verticalSpace;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColor.appbar,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MDime.md).w,
          child: Form(
            key: _keyFormForgot,
            child: Column(
              children: [
                // space
                spaceVertical,

                // logo
                const WidgetAuthLogo(),

                // space
                spaceVertical,

                // Description
                Text(
                  MLanguages.forgetPassText.tr(),
                  textAlign: TextAlign.center,
                  style: ThemeTextStyle.hMedium(context)?.copyWith(height: 2),
                ),

                // space
                spaceVertical,
                //email
                const WidgetAuthEmail(),

                // space
                spaceVertical,

                Consumer<ControllerAuth>(
                  builder: (context, auth, child) {
                    return WidgetBtn(
                      title: MLanguages.resetPass.tr(),
                      onTap: () async {
                        if (_keyFormForgot.currentState?.validate() ?? false) {
                          // save email
                          _keyFormForgot.currentState?.save();
                          await auth.resetPass();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(MLanguages.forgetBar.tr(),
                                  style: const TextStyle(color: Colors.white)),
                              backgroundColor: DarkLightTheme.isDark(context)
                                  ? ThemeColor.grey
                                  : ThemeColor.red,
                            ),
                          );
                        } else {
                          developer.log('validate');
                        }
                      },
                    );
                  },
                ),
                // button

                // space
                spaceVertical,

                // check account
                WidgetAuthCheckAccount(
                  firstWord: MLanguages.haveAccount,
                  secondWord: MLanguages.login,
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

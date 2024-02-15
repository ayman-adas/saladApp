part of './../import/import.dart';

class ViewRegister extends StatelessWidget {
  const ViewRegister({super.key});

  /// [_keyFormRegister] controller Widget `Form`
  static final GlobalKey<FormState> _keyFormRegister = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    /// [spaceVertical]  SizedBox 16 height
    SizedBox spaceVertical = MDime.l.verticalSpace;
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {
        // true back page
        // false no back page
        if (didPop) {
          ControllerImage image =
              Provider.of<ControllerImage>(context, listen: false);
          image.resetImage();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeColor.appbar,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MDime.md).w,
            child: Form(
              key: _keyFormRegister,
              child: Column(
                children: [
                  // space
                  spaceVertical,

                  // user image
                  const WidgetAuthImageUser(),

                  // space
                  spaceVertical,

                  // username
                  const WidgetAuthUsername(),

                  // space
                  spaceVertical,

                  //email
                  const WidgetAuthEmail(),

                  // space
                  spaceVertical,

                  // pass
                  const WidgetAuthPassword(isNotWorkChange: true),

                  // space
                  spaceVertical,

                  // Confirm pass
                  const WidgetAuthPassword(isConfirmPass: true),

                  // space
                  spaceVertical,

                  Consumer<ControllerAuth>(
                    builder: (context, auth, child) {
                      return WidgetAuthBtn(
                              title: MLanguages.signup.tr().substring(
                                  0, MLanguages.signup.tr().length - 1),
                              onTap: () async {
                                if (_keyFormRegister.currentState?.validate() ??
                                    false) {
                                  // save data
                                  _keyFormRegister.currentState?.save();

                                  // register user
                                  if (!(await auth.register(context))) {
                                    // show toast error massage
                                    if (context.mounted) {
                                      WidgetToast.buildToast(
                                        context: context,
                                        msg: auth.errorMessage,
                                        translation: false,
                                      );
                                    }
                                  } else {
                                    // ✅
                                    if (context.mounted) {
                                      // delete page register
                                      // wrapper push to home
                                      ThemeRestart.reDraw(context);
                                    }
                                  }
                                }
                              },
                            );
                    },
                  ),
                  // button

                  // space
                  spaceVertical,
                  // check account
                  Consumer<ControllerImage>(builder: (context, image, child) {
                    return WidgetAuthCheckAccount(
                      firstWord: MLanguages.haveAccount,
                      secondWord: MLanguages.login,
                      onTap: () {
                        image.resetImage();
                        Navigator.pop(context);
                      },
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

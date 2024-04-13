part of '../../import/import.dart';

class ViewRegister extends StatelessWidget {
  const ViewRegister({super.key});

  /// [_keyFormRegister] controller Widget `Form`
  static final GlobalKey<FormState> _keyFormRegister = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    /// [spaceVertical]  SizedBox 16 height
    SizedBox spaceVertical = MDime.sm.verticalSpace;
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
                  MDime.l.verticalSpace,

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
                  MDime.md.verticalSpace,

                  Consumer<ControllerAuth>(
                    builder: (context, auth, child) {
                      return WidgetBtn(
                        title: MLanguages.register
                            .tr()
                            .substring(0, MLanguages.register.tr().length - 1),
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
                  Center(
                      child: Text(
                    "---------- ${MLanguages.signupwith.tr()} ----------",
                    style: ThemeTextStyle.bLarge(context)
                        ?.copyWith(color: ThemeColor.red),
                  )),
                  Consumer<ControllerAuth>(builder: (context, auth, child) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              auth.signInWithGoogle();
                            },
                            child: Image(
                              height: (MDime.d1 * MDime.l).h,
                              image: const NetworkImage(
                                  MSadalPictureListItem.google),
                            ))
                      ],
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

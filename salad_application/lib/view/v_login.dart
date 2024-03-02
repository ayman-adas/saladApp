part of './../import/import.dart';

class VLogin extends StatelessWidget {
  const VLogin({super.key});
  static final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ControllerAuth auth = Provider.of<ControllerAuth>(
      context,
    );

    // Widget buttom(
    //   BuildContext context,
    // ) {
    //   return ThemeTestphone.isIos(context)
    //       ? CupertinoButton(
    //           color: ThemeColor.gold,
    //           minSize: MDime.quarter * 360 - 30.h,
    //           onPressed: () {
    //             ControllerAuth auth =
    //                 Provider.of<ControllerAuth>(context, listen: false);
    //             auth.login(context);
    //           },
    //           child: Text(MLanguages.page2button.tr(),
    //               style: ThemeTextStyle.tLarge(context)))
    //       : ElevatedButton(
    //           style: ButtonStyle(
    //             minimumSize: MaterialStatePropertyAll(Size(
    //                 (MDime.fullScreen * 310).w, MDime.quarter * 360 - 30.h)),
    //             backgroundColor: MaterialStatePropertyAll(ThemeColor.gold),
    //             foregroundColor: MaterialStatePropertyAll(
    //               DarkLightTheme.isDark(context)
    //                   ? ThemeColor.green
    //                   : ThemeColor.red,
    //             ),
    //           ),
    //           child: Text(MLanguages.login.tr(),
    //                   style: ThemeTextStyle.tLarge(context))
    //               .tr(),
    //           onPressed: () {
    //             ControllerAuth auth =
    //                 Provider.of<ControllerAuth>(context, listen: false);
    //             auth.login(context);
    //           });
    // }

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: MDime.sm).h,
        child: Center(
            child: Column(children: [
          Container(
            color: ThemeColor.bluefateh,
            width: double.infinity,
            height: MDime.quarter * 600.h,
            child: Container(
                color: ThemeColor.bluefateh,
                width: MDime.half * 200.w,
                child: const Image(
                    image: NetworkImage(MSadalPictureListItem.image2))),
          ),
          MDime.sm.verticalSpace,
          Text(
            MLanguages.nameproject.tr(),
            style: ThemeTextStyle.hLarge(context),
          ),
          Divider(color: ThemeColor.gold),
          MDime.md.verticalSpace,
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
              width: MDime.base.w,
              color: DarkLightTheme.isDark(context)
                  ? ThemeColor.white
                  : ThemeColor.black,
            )),
            child: Form(
              key: _keyForm,
              child: Column(
                children: [
                  MDime.md.verticalSpace,
                  const WidgetAuthEmail(),
                  MDime.md.verticalSpace,
                  const WidgetAuthPassword(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0).w,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MRouteName.forgetPass);

                          auth.resetAuth();
                        },
                        child: Text(
                          MLanguages.forgetPass.tr(),
                          style: ThemeTextStyle.tMedium(context)
                              ?.copyWith(color: ThemeColor.gold),
                        ),
                      ),
                    ),
                  ),
                  MDime.md.verticalSpace,
                  Consumer<ControllerAuth>(
                    builder: (context, auth, child) {
                      // button
                      return ElevatedButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(
                              (MDime.fullScreen * 310).w,
                              MDime.quarter * 360 - 30.h)),
                          backgroundColor:
                              MaterialStatePropertyAll(ThemeColor.gold),
                          foregroundColor: MaterialStatePropertyAll(
                            DarkLightTheme.isDark(context)
                                ? ThemeColor.green
                                : ThemeColor.red,
                          ),
                        ),
                        child: Text(MLanguages.login.tr(),
                                style: ThemeTextStyle.tLarge(context))
                            .tr(),
                        onPressed: () async {
                          if (_keyForm.currentState?.validate() ?? false) {
                            // save data
                            _keyForm.currentState?.save();
                            if (!(await auth.login(context))) {
                              // show toast error massage
                              if (context.mounted) {
                                WidgetToast.buildToast(
                                  msg: auth.errorMessage,
                                  context: context,
                                );
                              }
                            }
                          } else {
                            developer.log('validate');
                            Navigator.pop(context);
                          }
                        },
                      );
                    },
                  ),
                  MDime.md.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(MLanguages.dontHaveAccount.tr(),
                          style: ThemeTextStyle.lLarge(context)),
                      TextButton(
                        onPressed: () {
                          auth.resetAuth();

                          Navigator.pushNamed(context, MRouteName.signup);
                        },
                        child: Text(
                          MLanguages.register.tr(),
                          style: ThemeTextStyle.lLarge(context)
                              ?.copyWith(color: ThemeColor.gold),
                        ),
                      ),
                    ],
                  ),
                  Center(
                      child: Text(
                    "---------- ${MLanguages.singinWith.tr()} ----------",
                    style: ThemeTextStyle.bLarge(context)
                        ?.copyWith(color: ThemeColor.red),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () async {
                            await auth.signInWithGoogle();
                          },
                          child: Image(
                            height: (MDime.d1 * MDime.l).h,
                            image: const NetworkImage(
                                MSadalPictureListItem.google),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ])),
      )),
    );
  }
}

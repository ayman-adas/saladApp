part of './../import/import.dart';

class VLogin extends StatelessWidget {
  const VLogin({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buttom(
      BuildContext context,
    ) {
      return ThemeTestphone.isIos(context)
          ? CupertinoButton(
              color: ThemeColor.gold,
              minSize: MDime.quarter * 360 - 30.h,
              onPressed: () {},
              child: Text(MLanguages.page2button.tr(),
                  style: ThemeTextStyle.tLarge(context)))
          : ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(
                    (MDime.fullScreen * 310).w, MDime.quarter * 360 - 30.h)),
                backgroundColor: MaterialStatePropertyAll(ThemeColor.gold),
                foregroundColor: MaterialStatePropertyAll(
                  DarkLightTheme.isDark(context)
                      ? ThemeColor.green
                      : ThemeColor.red,
                ),
              ),
              child: Text(MLanguages.login.tr(),
                      style: ThemeTextStyle.tLarge(context))
                  .tr(),
              onPressed: () {});
    }

    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: 75.0).h,
        child: Center(
            child: Column(children: [
          Container(
            color: ThemeColor.appbar,
            width: double.infinity,
            height: MDime.quarter * 730.h,
            child: Container(
                color: ThemeColor.appbar,
                width: MDime.half * 200.w,
                child: const Image(image: AssetImage('assets/icon.png'))),
          ),
          MDime.sm.verticalSpace,
          Text(
            MLanguages.nameproject.tr(),
            style: ThemeTextStyle.hLarge(context),
          ),
          Divider(color: ThemeColor.gold),
          MDime.l.verticalSpace,
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
              width: MDime.base.w,
              color: DarkLightTheme.isDark(context)
                  ? ThemeColor.white
                  : ThemeColor.black,
            )),
            child: Column(
              children: [
                MDime.l.verticalSpace,
                Padding(
                  padding: const EdgeInsets.only(right: 20.0).w,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(MLanguages.email.tr(),
                        style: ThemeTextStyle.hSmall(context)?.copyWith(
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
                WTextField(controller: emailController, hintText: MLogin.email),
                MDime.l.verticalSpace,
                Padding(
                  padding: const EdgeInsets.only(right: 20.0).w,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(MLanguages.password.tr(),
                        style: ThemeTextStyle.hSmall(context)?.copyWith(
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
                WTextField(
                    isPass: true, controller: passController, hintText: ""),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0).w,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        MLanguages.forgetPass.tr(),
                        style: ThemeTextStyle.tMedium(context)
                            ?.copyWith(color: ThemeColor.gold),
                      ),
                    ),
                  ),
                ),
                MDime.l.verticalSpace,
                buttom(context),
                MDime.md.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(MLanguages.dontHaveAccount.tr(),
                        style: ThemeTextStyle.lLarge(context)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MRouteName.signup);
                      },
                      child: Text(
                        MLanguages.signup.tr(),
                        style: ThemeTextStyle.lLarge(context)
                            ?.copyWith(color: ThemeColor.gold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ])),
      )),
    );
  }
}

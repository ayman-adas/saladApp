part of '../import/import.dart';

class VAbout extends StatelessWidget {
  const VAbout({super.key});

  @override
  Widget build(BuildContext context) {
    IconData icon(BuildContext context) {
      return ThemeTestphone.isIos(context)
          ? MIcons.arowforcurp
          : MIcons.arowfor;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(icon(context)),
        ),
      ),
      body: Column(children: [
        Container(
          color: ThemeColor.appbar,
          child: Image(
            image: const NetworkImage(MSadalPictureListItem.image4),
            height: MDime.quarter * 960.h,
          ),
        ),
        MDime.md.verticalSpace,
        Center(
          child: Text(MLanguages.about.tr(),
              style: ThemeTextStyle.dMedium(context)),
        ),
        MDime.md.verticalSpace,
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            MLanguages.aboutText.tr(),
            style: ThemeTextStyle.bLarge(context),
          ),
        ),
        MDime.md.verticalSpace,
        Center(
          child: Text(
            MLanguages.contact.tr(),
            style: ThemeTextStyle.hLarge(context),
          ),
        ),
        MDime.md.verticalSpace,
        MDime.md.verticalSpace,
        Align(
          alignment: AlignmentDirectional.center,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () async {
                      Uri phoneno =
                          Uri.parse('https:${MAbout.facebookAccount}');
                      if (await launchUrl(phoneno)) {
                        //dialer opened
                      } else {
                        //dailer is not opened
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(MIcons.facebook),
                        Text(
                          "   ${MAbout.facebookName}",
                          style: ThemeTextStyle.lLarge(context),
                        ),
                      ],
                    )),
                MDime.l.horizontalSpace,
                InkWell(
                    onTap: () async {
                      Uri phoneno = Uri.parse('tel:${MAbout.phoneNumber}');
                      if (await launchUrl(phoneno)) {
                        //dialer opened
                      } else {
                        //dailer is not opened
                      }
                    },
                    child: Row(children: [
                      const Icon(MIcons.call),
                      Text(
                        "   ${MAbout.phoneNumber}",
                        style: ThemeTextStyle.lLarge(context),
                      ),
                      MDime.l.horizontalSpace,
                    ]))
              ],
            ),
          ),
        )
      ]),
    );
  }
}

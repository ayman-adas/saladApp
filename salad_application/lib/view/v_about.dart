part of '../import/import.dart';

class VAbout extends StatelessWidget {
  const VAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(MIcons.arrow),
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
        MDime.sm.horizontalSpace,
        Center(
          child: Text(MLanguages.about.tr(),
              style: ThemeTextStyle.dMedium(context)),
        ),
        Padding(
          padding: const EdgeInsets.all(MDime.sm * 5),
          child: Text(
            MLanguages.aboutText.tr(),
            style: ThemeTextStyle.bLarge(context),
          ),
        ),
        Center(
          child: Text(
            MLanguages.contact.tr(),
            style: ThemeTextStyle.hLarge(context),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: MDime.xl + 15, top: MDime.l),
            child: Row(
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

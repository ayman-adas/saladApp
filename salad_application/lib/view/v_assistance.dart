part of '../import/import.dart';

class VAssistance extends StatelessWidget {
  const VAssistance({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: ThemeColor.appbar,
              width: double.infinity,
              child: Image(
                image: const NetworkImage(MSadalPictureListItem.image5),
                height: MDime.quarter * 1000.h,
              ),
            ),
            MDime.md.verticalSpace,
            Center(
              child: Text(MLanguages.assistacne.tr(),
                  style: ThemeTextStyle.dSmall(context)),
            ),
            MDime.md.verticalSpace,
            Padding(
              padding: const EdgeInsets.only(right: MDime.sm * 5).w,
              child: Text(
                MLanguages.assistacneText.tr(),
                style: ThemeTextStyle.tLarge(context),
              ),
            ),
            MDime.md.verticalSpace,
            Padding(
              padding: const EdgeInsets.only(right: MDime.sm * 5).w,
              child: TextField(
                maxLength: 35,
                cursorColor: DarkLightTheme.isDark(context)
                    ? ThemeColor.green
                    : ThemeColor.red,
                decoration: InputDecoration(
                    filled: true,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: DarkLightTheme.isDark(context)
                            ? ThemeColor.green
                            : ThemeColor.red,
                      ),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: DarkLightTheme.isDark(context)
                            ? ThemeColor.green
                            : ThemeColor.red,
                      ),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    border: const OutlineInputBorder(),
                    hintText: MLanguages.assistacneField.tr(),
                    hintStyle: const TextStyle(
                        fontSize: MDime.md + 4, fontWeight: FontWeight.w200)),
                textAlign: TextAlign.start,
                onSubmitted: (value) {
                  if (value.length > 2) {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(MLanguages.assistanceSnackBarTrue.tr()),
                      backgroundColor: DarkLightTheme.isDark(context)
                          ? ThemeColor.green
                          : ThemeColor.red,
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(MLanguages.assistanceSnackBarFalse.tr(),
                            style: const TextStyle(color: Colors.white)),
                        backgroundColor: DarkLightTheme.isDark(context)
                            ? ThemeColor.green
                            : ThemeColor.red,
                      ),
                    );
                  }
                },
              ),
            ),
            SizedBox(
              height: 220,
              child: SvgPicture.network(
                "https://svgsilh.com/svg_v2/460508.svg",
                colorFilter: ColorFilter.mode(ThemeColor.gold, BlendMode.srcIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

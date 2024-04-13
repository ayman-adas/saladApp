part of '../import/import.dart';

class VPage1 extends StatefulWidget {
  const VPage1({super.key});

  @override
  State<VPage1> createState() => _VPage1State();
}

class _VPage1State extends State<VPage1> {
  @override
  void initState() {
    super.initState();

    CNotificationMasage.requestMassaging();
  }

  @override
  Widget build(BuildContext context) {
    //picture
    return SizedBox(
        width: MDime.fullScreen * 360.w,
        height: MDime.fullScreen * 700.h,
        child: Column(children: [
          Container(
            height: MDime.half * 700.h,
            color: ThemeColor.bluefateh,
            child: Image.asset(
              "assets/page1.png",
              height: (MDime.half * 690 - 100).h,
            ),
          ),
          //title
          Container(
            padding: const EdgeInsets.fromLTRB(5, 50, 0, 0),
            child: Text(MLanguages.page1title,
                    style: ThemeTextStyle.hSmall(context))
                .tr(),
          ),
          //body
          Container(
              padding: const EdgeInsets.fromLTRB(40, 50, 10, 0),
              child: Text(
                MLanguages.page1body,
                style: ThemeTextStyle.tSmall(context),
              ).tr()),
        ]));
  }
}

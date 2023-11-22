part of '../import/import.dart';

class VPage1 extends StatelessWidget {
  const VPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MDime.fullScreen * 360.w,
        height: MDime.fullScreen * 690.h,
        child: Column(children: [
          Container(
            height: MDime.half * 690.h,
            color: const Color.fromARGB(255, 255, 200, 0),
            child: Image.asset(
              "assets/page1.png",
              height: (MDime.half * 690 - 100).h,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(5, 50, 0, 0),
            child: Text(MLanguages.page1title,
                    style: ThemeTextStyle.hSmall(context))
                .tr(),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(40, 50, 10, 0),
              child: Text(
                MLanguages.page1body,
                style: ThemeTextStyle.tSmall(context),
              ).tr()),
        ]));
  }
}

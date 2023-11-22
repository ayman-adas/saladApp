part of '../import/import.dart';

class VPage2 extends StatefulWidget {
  const VPage2({super.key});

  @override
  State<VPage2> createState() => _VPage2State();
}

class _VPage2State extends State<VPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: (MDime.half * 690).h,
              color: const Color.fromARGB(255, 255, 200, 0),
              child: Image.asset(
                "assets/page2.jpeg",
                height: (MDime.half * 690 - 100).h,
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(5, 50, 0, 0),
                child: Text(
                  MLanguages.page2title,
                  style: ThemeTextStyle.hSmall(context),
                ).tr()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLength: 10,
                cursorColor: ThemeColor.green,
                controller: textController,
                decoration: InputDecoration(
                    filled: true,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeColor.green),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ThemeColor.green),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    border: const OutlineInputBorder(),
                    hintText: MLanguages.page2hint.tr(),
                    hintStyle: ThemeTextStyle.lMedium(context)),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 45, 10, 00),
                child: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(
                          (MDime.fullScreen * 630).w,
                          MDime.quarter * 360 - 30.h)),
                      backgroundColor:
                          MaterialStatePropertyAll(ThemeColor.gold),
                      foregroundColor:
                          MaterialStatePropertyAll(ThemeColor.green),
                    ),
                    child: Text(MLanguages.page2button,
                            style: ThemeTextStyle.tLarge(context))
                        .tr(),
                    onPressed: () {
                      if (!textController.value.text.isUsername()) {
                        Dialogs.materialDialog(
                          title: MLanguages.page2errorMassage.tr(),
                          context: context,
                          color: Colors.white,
                          onClose: (value) {},
                          titleStyle:
                              TextStyle(fontSize: 20.sp, color: Colors.black),
                          actions: [
                            IconsButton(
                              onPressed: () {
                                Navigator.of(context).pop(['Test', 'List']);
                              },
                              text: MLanguages.ok.tr(),
                              textStyle: ThemeTextStyle.tLarge(context),
                              color: ThemeColor.gold,
                            ),
                          ],
                        );
                      } else {
                        Navigator.pushNamed(context, MRouteName.networkTest);
                      }
                    }))
          ],
        ),
      ),
    );
  }
}

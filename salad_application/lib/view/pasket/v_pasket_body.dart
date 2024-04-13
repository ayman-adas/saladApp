part of './../../import/import.dart';

class VPasketBody extends StatefulWidget {
  const VPasketBody({super.key});

  @override
  State<VPasketBody> createState() => _VPasketBodyState();
}

Text show() {
  if (CDatabase.sailAll == 0) {
    return const Text("");
  }
  return Text("${MLanguages.totalSails.tr()} ${CDatabase.sailAll}JD",
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400));
}

class _VPasketBodyState extends State<VPasketBody> {
  @override
  void initState() {
    super.initState();
    CDatabase controllerFruit = Provider.of<CDatabase>(context, listen: false);
    controllerFruit.selectitems();
  }

  @override
  Widget build(BuildContext context) {
    bool isEnglish(BuildContext context) =>
        context.locale.languageCode == 'en' ? true : false;
    CDatabase controllerFruit = Provider.of<CDatabase>(
      context,
    );

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(MIcons.arrowbac),
          ),
        ),
        body: Column(children: [
          MDime.md.horizontalSpace,
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
            child: AnimationLimiter(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    itemCount: CDatabase.pasketList.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index < 0 || index >= CDatabase.pasketList.length) {
                        return null;
                      }
                      return AnimationConfiguration.staggeredList(
                          position: index,
                          delay: const Duration(milliseconds: 100),
                          child: SlideAnimation(
                              duration: const Duration(milliseconds: 2500),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child: Column(
                                children: [
                                  FadeInAnimation(
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      duration:
                                          const Duration(milliseconds: 2500),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder:
                                                  (BuildContext context) {
                                            return VQuantity(
                                              salad: (controllerFruit
                                                      .convertTofruitSalad(
                                                          (CDatabase.pasketList[
                                                              index])) ??
                                                  MFruitSalad()),
                                              counter: CDatabase
                                                      .pasketList[index]
                                                      .counter ??
                                                  0,
                                              counter2: CDatabase
                                                      .pasketList[index]
                                                      .counter ??
                                                  0,
                                            );
                                          }));
                                          setState(() {});
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            WPacketSalad(
                                                url: CDatabase.pasketList[index]
                                                        .image ??
                                                    '',
                                                data: (isEnglish(context)
                                                        ? CDatabase
                                                            .pasketList[index]
                                                            .englishName
                                                        : CDatabase
                                                            .pasketList[index]
                                                            .arabicName) ??
                                                    '',
                                                sail: (CDatabase
                                                            .pasketList[index]
                                                            .sail ??
                                                        0) *
                                                    (CDatabase.pasketList[index]
                                                            .counter ??
                                                        0),
                                                counter: CDatabase
                                                        .pasketList[index]
                                                        .counter ??
                                                    0,
                                                index: index),
                                            Flexible(
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  controllerFruit.deleteItem(
                                                      CDatabase
                                                          .pasketList[index]);
                                                },
                                                style: ButtonStyle(
                                                  fixedSize:
                                                      MaterialStatePropertyAll(
                                                          Size(MDime.d1 * 50.w,
                                                              MDime.d1 * 50.h)),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                          const CircleBorder()),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.red),
                                                ),
                                                child: Text("X",
                                                    style:
                                                        ThemeTextStyle.lLarge(
                                                            context)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                  5.verticalSpace
                                ],
                              )));
                    })),
          )),
          const WidgetTotalSail(),
          const WidgetPasketBtn(),
        ]));
  }
}

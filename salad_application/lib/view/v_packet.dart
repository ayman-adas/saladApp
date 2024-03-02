part of '../import/import.dart';

class VPacket extends StatefulWidget {
  const VPacket({super.key});

  @override
  State<VPacket> createState() => _VPacketState();
}

Text show() {
  if (CDatabase.sailAll == 0) {
    return const Text("");
  }
  return Text("${MLanguages.totalSails.tr()} ${CDatabase.sailAll}JD",
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400));
}

class _VPacketState extends State<VPacket> {
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
          20.horizontalSpace,
          Expanded(
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
                                child: FadeInAnimation(
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
                                            counter: CDatabase.pasketList[index]
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
                                      child: Expanded(
                                        child: Row(
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
                                            ((MDime.l) + (MDime.l))
                                                .horizontalSpace,
                                            Flexible(
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    controllerFruit.deleteItem(
                                                        CDatabase
                                                            .pasketList[index]);
                                                  },
                                                  style: ButtonStyle(
                                                      fixedSize:
                                                          MaterialStatePropertyAll(
                                                              Size(
                                                                  MDime.d1 *
                                                                      50.w,
                                                                  MDime.d1 *
                                                                      50.h)),
                                                      shape: MaterialStateProperty
                                                          .all(
                                                              const CircleBorder()),
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(Colors.red),
                                                      padding:
                                                          const MaterialStatePropertyAll(
                                                              EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          22,
                                                                      horizontal:
                                                                          22))),
                                                  child: Text("X",
                                                      style:
                                                          ThemeTextStyle.lLarge(
                                                              context)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ))));
                      }))),
          Container(
              color: const Color.fromARGB(174, 255, 200, 0),
              height: MDime.quarter * 690.h - 70,
              width: double.infinity,
              child: Center(child: show()))
        ]));
  }
}

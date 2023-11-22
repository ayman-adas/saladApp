part of '../import/import.dart';

class VPacket extends StatefulWidget {
  const VPacket({super.key});

  @override
  State<VPacket> createState() => _VPacketState();
}

Text show() {
  if (sailAll == 0) {
    return const Text("");
  }
  return Text("${MLanguages.totalSails.tr()} ${sailAll}JD",
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400));
}

List list() {
  List temp = [];
  int index = 0;
  for (int i = 0; i < CPacketList.list.length; i++) {
    if (CPacketList.list[i].counter > 0) {
      temp.insert(index, CPacketList.list[i]);
      index++;
    }
  }
  return temp;
}

class _VPacketState extends State<VPacket> {
  @override
  Widget build(BuildContext context) {
    List listview = list();
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_outlined),
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
                      itemCount: listview.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (index < 0 || index >= listview.length) {
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
                                            index: listview[index].index,
                                            data: listview[index].data,
                                            url: listview[index].url,
                                            sail: (listview[index].sail /
                                                    listview[index].counter)
                                                .round(),
                                            counter: listview[index].counter,
                                            counter2: listview[index].counter,
                                          );
                                        }));
                                        setState(() {});
                                      },
                                      child: Expanded(
                                        child: Row(
                                          children: [
                                            listview[index],
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 30),
                                              child: Flexible(
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      sailAll -=
                                                          listview[index].sail;
                                                      listview[index].counter =
                                                          0;
                                                      setState(() {});
                                                    },
                                                    style: ButtonStyle(
                                                        fixedSize:
                                                            MaterialStatePropertyAll(
                                                                Size(
                                                                    MDime.d1 *
                                                                        50.w,
                                                                    MDime.d1 *
                                                                        50.h)),
                                                        shape: MaterialStateProperty.all(
                                                            const CircleBorder()),
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all(
                                                                    Colors.red),
                                                        padding:
                                                            const MaterialStatePropertyAll(
                                                                EdgeInsets.symmetric(
                                                                    vertical:
                                                                        22,
                                                                    horizontal:
                                                                        22))),
                                                    child: Text("X",
                                                        style: ThemeTextStyle
                                                            .lLarge(context)),
                                                  ),
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

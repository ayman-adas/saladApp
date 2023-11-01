import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fruit_salad/controller/c_packet_list.dart';
import 'package:fruit_salad/view/v_quantity.dart';

class VPacket extends StatefulWidget {
  const VPacket({super.key});

  @override
  State<VPacket> createState() => _VPacketState();
}

Text show() {
  if (VQuantity.sailAll == 0) {
    return const Text("");
  }
  return Text("Total sails ${VQuantity.sailAll}JD",
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400));
}

class _VPacketState extends State<VPacket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFC800),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_outlined),
          ),
        ),
        body: Column(children: [
          Container(
            height: 20,
          ),
          Expanded(
              child: AnimationLimiter(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      itemCount: CPacketList.list.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (index < 0 || index >= CPacketList.list.length) {
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
                                    child: Expanded(
                                      child: Row(
                                        children: [
                                          CPacketList.list[index],
                                          Flexible(
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  VQuantity.sailAll -=
                                                      CPacketList
                                                          .list[index].sailAll;
                                                  CPacketList.list
                                                      .removeAt(index);
                                                  setState(() {});
                                                },
                                                style: ButtonStyle(
                                                  shape:
                                                      MaterialStateProperty.all(
                                                          const CircleBorder()),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.red),
                                                ),
                                                child: const Text("X"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))));
                      })))

          // child: ListView.builder(
          //   itemCount: CPacketList.list.length,
          //   itemBuilder: (BuildContext context, int index) {
          // if (index < 0 || index >= CPacketList.list.length) {
          //   return null;
          // }

          //     return Column(
          //       children: [
          //         Card(
          //           child: Container(
          //             constraints: const BoxConstraints(
          //                 maxHeight:
          //                     double.infinity), // Set a maximum height

          // child: Expanded(
          //   child: Row(
          //     children: [
          //       CPacketList.list[index],
          //       Flexible(
          //         child: Align(
          //           alignment: Alignment.centerRight,
          //           child: ElevatedButton(
          //             onPressed: () {
          //               VQuantity.sailAll -=
          //                   CPacketList.list[index].sailAll;
          //               CPacketList.list.removeAt(index);
          //               setState(() {});
          //             },
          //             style: ButtonStyle(
          //               shape: MaterialStateProperty.all(
          //                   const CircleBorder()),
          //               backgroundColor:
          //                   MaterialStateProperty.all(
          //                       Colors.red),
          //             ),
          //             child: const Text("X"),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          //             ),
          //           ),
          //         ),
          //         Container(
          //           height: 20,
          //         ),
          //       ],
          //     );
          //   },
          // ),
          ,
          Container(
              color: const Color(0xFFFFC800),
              height: 100,
              width: double.infinity,
              child: Center(child: show()))
        ]));
  }
}

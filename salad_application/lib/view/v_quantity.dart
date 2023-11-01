import 'package:flutter/material.dart';
import 'package:fruit_salad/controller/c_packet_list.dart';
import 'package:fruit_salad/model/m_quantity.dart';
import 'package:fruit_salad/widget/w_packet_element.dart';

class VQuantity extends StatefulWidget {
  const VQuantity(
      {super.key, required this.data, required this.sail, required this.url});
  final String data;
  final int sail;
  final String url;
  static int sailAll = 0;
  @override
  State<VQuantity> createState() => _VQuantityState();
}

class _VQuantityState extends State<VQuantity> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 200, 0),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () => Navigator.pop(
              context,
            ),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(children: [
            Container(
              height: 450,
              color: const Color.fromARGB(255, 255, 200, 0),
              child: Image.network(
                widget.url,
                height: 400,
              ),
            ),
            Center(
              child: Text(
                widget.data,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(75, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 230, 105, 146)),
                        shape: MaterialStatePropertyAll(CircleBorder())),
                    onPressed: () {
                      if (counter != 0) {
                        counter--;
                      }
                      setState(() {});
                    },
                    child: const Icon(Icons.remove),
                  ),
                  SizedBox(
                    width: 20.0,
                    child: Text(counter.toString()),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      counter++;
                      setState(() {});
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                        shape: MaterialStatePropertyAll(CircleBorder())),
                    child: const Icon(Icons.add),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Icon(Icons.money_rounded),
                  ),
                  Text("${widget.sail * counter}JD")
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Text(
                MQuantity.desc1 + widget.data + MQuantity.desc2,
                style: const TextStyle(fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 25, 0, 00),
              child: ElevatedButton(
                  style: const ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(340, 60)),
                      backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                  child: const Text(
                    MQuantity.button,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    int index = CPacketList.list.length;
                    VQuantity.sailAll += widget.sail * counter;
                    if (counter > 0) {
                      CPacketList.list.insert(
                          index,
                          WPacketElement(
                              counter: counter,
                              url: widget.url,
                              data: widget.data,
                              sailAll: widget.sail * counter));
                    }
                    Navigator.pop(
                      context,
                    );
                    setState(() {});
                  }),
            )
          ]),
        ));
  }
}

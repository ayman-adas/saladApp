part of '../import/import.dart';

// ignore: must_be_immutable
class VQuantity extends StatefulWidget {
  VQuantity(
      {super.key,
      required this.index,
      required this.data,
      required this.sail,
      required this.url,
      required this.counter,
      required this.counter2});
  final String data;
  final int sail;
  final String url;
  int counter;
  final int index;
  late final int counter2;
  @override
  State<VQuantity> createState() => _VQuantityState();
}

class _VQuantityState extends State<VQuantity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
            SizedBox(
              height: 450,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 230, 105, 146)),
                          shape: MaterialStatePropertyAll(CircleBorder())),
                      onPressed: () {
                        if (widget.counter != 0) {
                          widget.counter--;
                        }
                        setState(() {});
                      },
                      child: const Icon(Icons.remove),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                    child: Text(widget.counter.toString()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (widget.counter < 98) {
                          widget.counter++;
                        }
                        setState(() {});
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue),
                          shape: MaterialStatePropertyAll(CircleBorder())),
                      child: const Icon(Icons.add),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Icon(Icons.money_rounded),
                  ),
                  Text("${widget.sail * widget.counter}JD")
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
                    setState(() {
                      if (widget.counter == 0) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return CErrorMassage(
                            massage: MQuantity.error,
                            callback: () => Navigator.pop(context),
                          );
                        }));
                      }

                      if (widget.counter > 0) {
                        if (widget.counter < widget.counter2) {
                          sailAll -= widget.sail *
                              ((widget.counter - widget.counter2).abs());
                        } else {
                          sailAll += widget.sail *
                              ((widget.counter - widget.counter2));
                        }
                        CPacketList.list[widget.index].counter = widget.counter;
                        MPage3.list[widget.index].counter = widget.counter;
                        CPacketList.list[widget.index].sail =
                            widget.sail * widget.counter;
                        setState(() {});

                        Navigator.pop(
                          context,
                        );
                      }
                    });
                  }),
            )
          ]),
        ));
  }
}

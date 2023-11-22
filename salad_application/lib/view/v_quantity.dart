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
            width: MDime.fullScreen * 360.w,
            height: MDime.fullScreen * 690.h,
            child: Column(children: [
              SizedBox(
                height: MDime.half * 690.h,
                child: Image.network(
                  widget.url,
                  height: MDime.half.h,
                ),
              ),
              Center(
                child: Text(widget.data, style: ThemeTextStyle.hSmall(context)),
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
                          if (widget.counter != 1) {
                            widget.counter--;
                          }
                          setState(() {});
                        },
                        child: const Icon(Icons.remove),
                      ),
                    ),
                    SizedBox(
                      width: MDime.d1 * 6,
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
                padding: const EdgeInsets.fromLTRB(30, 10, 25, 0),
                child: Text(
                        " ${MLanguages.quantitydesc1.tr()}\n${widget.data} ${MLanguages.quantitydesc2.tr()}",
                        style: ThemeTextStyle.tMedium(context))
                    .tr(),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(5, 25, 0, 00),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(
                              Size(MDime.d7 * 130.w, MDime.d1.h * 30)),
                          backgroundColor:
                              MaterialStatePropertyAll(ThemeColor.gold)),
                      child: Text(MLanguages.quantitybutton.tr(),
                              style: ThemeTextStyle.tLarge(context))
                          .tr(),
                      onPressed: () {
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
                      }))
            ])));
  }
}

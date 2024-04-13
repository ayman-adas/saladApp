part of '../../import/import.dart';

// ignore: must_be_immutable
class VQuantity extends StatefulWidget {
  VQuantity(
      {super.key,
      required this.salad,
      required this.counter,
      required this.counter2});
  final MFruitSalad salad;
  int counter;
  int counter2;
  @override
  State<VQuantity> createState() => _VQuantityState();
}

class _VQuantityState extends State<VQuantity> {
  @override
  Widget build(BuildContext context) {
    CDatabase packetProvider = Provider.of<CDatabase>(context);
    bool isEnglish(BuildContext context) =>
        context.locale.languageCode == 'en' ? true : false;

    IconData icon(BuildContext context) {
      return ThemeTestphone.isIos(context)
          ? MIcons.arrowbaccurp
          : MIcons.arrowbac;
    }

    Widget buttom(
      BuildContext context,
    ) {
      return ThemeTestphone.isIos(context)
          ? CupertinoButton(
              minSize: MDime.d1.h * 30,
              color: ThemeColor.gold,
              onPressed: () {
                packetProvider.createpasketAndUpdate(packetProvider
                    .convertToPasket(widget.salad, widget.counter));

                Navigator.pop(context);

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(MLanguages.quantitySnackBar.tr(),
                        style: const TextStyle(color: Colors.white)),
                    backgroundColor: DarkLightTheme.isDark(context)
                        ? ThemeColor.green
                        : ThemeColor.red,
                  ),
                );
                Navigator.pop(
                  context,
                );
              },
              child: Text(MLanguages.quantitybutton.tr(),
                  style: ThemeTextStyle.tLarge(context)))
          : ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(
                      Size(MDime.d7 * 130.w, MDime.d1.h * 30)),
                  backgroundColor: MaterialStatePropertyAll(ThemeColor.gold)),
              child: Text(MLanguages.quantitybutton.tr(),
                      style: ThemeTextStyle.tLarge(context))
                  .tr(),
              onPressed: () {
                packetProvider.createpasketAndUpdate(packetProvider
                    .convertToPasket(widget.salad, widget.counter));

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(MLanguages.quantitySnackBar.tr(),
                      style: const TextStyle(color: Colors.white)),
                  backgroundColor: DarkLightTheme.isDark(context)
                      ? ThemeColor.green
                      : ThemeColor.red,
                ));
                Navigator.pop(context);
              });
    }

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(icon(context)),
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
                  widget.salad.getImageUrl,
                  height: MDime.half.h,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Text(
                    isEnglish(context)
                        ? widget.salad.getEnglishName
                        : widget.salad._arabicName,
                    style: ThemeTextStyle.hSmall(context)),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(75, 10, 0, 0).w,
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
                      width: MDime.d9 * 10,
                      child: Text(widget.counter.toString()),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0).w,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 50).w,
                      child: const Icon(Icons.money_rounded),
                    ),
                    Text("${(widget.salad.getsalary) * widget.counter}JD")
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 25, 0).w,
                child: Text(
                        " ${MLanguages.quantitydesc1.tr()}\n${isEnglish(context) ? widget.salad.getEnglishName : widget.salad._arabicName} ${MLanguages.quantitydesc2.tr()}",
                        style: ThemeTextStyle.tMedium(context))
                    .tr(),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(5, 25, 0, 00).w,
                  child: buttom(
                    context,
                  ))
            ])));
  }
}

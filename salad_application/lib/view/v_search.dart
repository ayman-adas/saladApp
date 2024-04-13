// ignore_for_file: must_be_immutable

part of './../import/import.dart';

class ViewSearch extends StatefulWidget {
  ViewSearch({super.key});
  static final GlobalKey<FormState> keyform = GlobalKey<FormState>();
  String controller = '';

  @override
  State<ViewSearch> createState() => _ViewSearchState();
}

class _ViewSearchState extends State<ViewSearch> {
  @override
  Widget build(BuildContext context) {
    CFruitsalad controllerFruitUpload = Provider.of<CFruitsalad>(context);

    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColor.white,
        //form in appbar textfield
        title: Form(
            key: ViewSearch.keyform,
            child: WidgetSearchField(
              onChanged: (value) {
                setState(() {
                  if (ViewSearch.keyform.currentState?.validate() ?? false) {
                    // save data
                    ViewSearch.keyform.currentState?.save();
                    widget.controller = value;
                    developer.log(widget.controller);
                  }
                });
              },
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: MDime.xl),
        child: StreamBuilder<List<MFruitSalad>>(
            stream: controllerFruitUpload.getAllsalad,
            builder: (context, snapshot) {
              // waiting
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const WidgetProgress();
              }
              // check active connection
              if (snapshot.connectionState == ConnectionState.active) {
                // check has data
                if (snapshot.hasData) {
                  return Expanded(
                      child: ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (BuildContext context, int index) {
                            //check if is contain or not if contain show it otherwise null
                            if ((snapshot.data![index]._englishName!
                                    .contains(widget.controller)) ||
                                (snapshot.data![index]._arabicName!
                                    .contains(widget.controller))) {
                              counter++;
                              // developer.log(widget.controller);
                              // developer.log(counter.toString());
                              return WSaladButton(
                                salad: snapshot.data![index],
                                counter: 0,
                              );
                            } else {
                              return null;
                            }
                          }));
                }
                if (counter == 0) {
                  return Center(child: Text(MLanguages.failure.tr()));
                } else {
                  // no data
                  return CErrorMassage(massage: MLanguages.nodata);
                }
              } else {
                // no active
                return CErrorMassage(massage: MLanguages.noconnect);
              }
            }),
      ),
    );
  }
}

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
        backgroundColor: ThemeColor.appbar,
        title: Form(
          key: ViewSearch.keyform,
          child: TextFormField(
            cursorColor: DarkLightTheme.isDark(context)
                ? ThemeColor.green
                : ThemeColor.red,
            decoration: InputDecoration(
              hintText: MLanguages.search.tr(),
              focusColor: ThemeColor.black,
              hoverColor: ThemeColor.black,
              border: InputBorder.none,
            ),
            onChanged: (value) {
              setState(() {
                if (ViewSearch.keyform.currentState?.validate() ?? false) {
                  // save data
                  ViewSearch.keyform.currentState?.save();
                  widget.controller = value;
                }
              });
            },
          ),
        ),
      ),
      body: StreamBuilder<List<MFruitSalad>>(
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
                          if ((snapshot.data![index]._englishName!
                                  .contains(widget.controller)) ||
                              (snapshot.data![index]._arabicName!
                                  .contains(widget.controller))) {
                            counter++;
                            developer.log(widget.controller);
                            developer.log(counter.toString());
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
                return const CErrorMassage(massage: MLanguages.nodata);
              }
            } else {
              // no active
              return const CErrorMassage(massage: MLanguages.noconnect);
            }
          }),
    );
  }
}

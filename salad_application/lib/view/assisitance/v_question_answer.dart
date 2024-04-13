// ignore_for_file: file_names

part of '../../import/import.dart';

class VQuestionAnswer extends StatelessWidget {
  const VQuestionAnswer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CAssisitance controllerAnswerUpload = Provider.of<CAssisitance>(context);
    // get data stream
    return StreamBuilder<List<MAssstance>>(
        stream: controllerAnswerUpload.getAllAnswer,
        builder: (context, snapshot) {
          // waiting
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const WidgetProgress();
          }
          // check active connection
          if (snapshot.connectionState == ConnectionState.active) {
            // check has data
            if (snapshot.hasData) {
              return PopScope(
                canPop: false,
                child: Scaffold(
                  appBar: AppBar(),
                  drawer: const VMainDrawer(),
                  body: Column(children: [
                    Container(
                        color: ThemeColor.gold,
                        height: MDime.d3 * 690 - 500.h,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 20, 5, 0).w,
                            child: const Image(
                              image: NetworkImage(MSadalPictureListItem.iamge7),
                              fit: BoxFit.fill,
                            ))),
                    Divider(
                      color: DarkLightTheme.isDark(context)
                          ? ThemeColor.grey
                          : ThemeColor.red,
                    ),
                    Expanded(
                        child: ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return WAssistanceAnswer(
                            url: snapshot.data![index]._image ?? "1",
                            desc: snapshot.data![index]._desc ?? "2",
                            name: snapshot.data![index]._name ?? "3");
                      },
                    )),
                  ]),
                ),
              );
            } else {
              // no data
              return  CErrorMassage(massage: MLanguages.nodata);
            }
          } else {
            // no active
            return  CErrorMassage(massage: MLanguages.noconnect);
          }
        });
  }
}

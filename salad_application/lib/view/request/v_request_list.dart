part of './../../import/import.dart';
// ignore_for_file: file_names

class ViewRequestList extends StatelessWidget {
  const ViewRequestList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CPasket controllerAnswerUpload = Provider.of<CPasket>(context);
    // get data stream
    return StreamBuilder<List<MPasket>>(
        stream: controllerAnswerUpload.getAllRequest,
        builder: (context, snapshot) {
          // waiting
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const WidgetProgress();
          }
          // check active connection
          if (snapshot.connectionState == ConnectionState.active) {
            // check has data
            developer.log(snapshot.data?.length.toString() ?? "2");

            if (snapshot.hasData) {
              return PopScope(
                  child: Scaffold(
                      appBar: AppBar(),
                      body: Expanded(
                          child: ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (BuildContext context, int index) {
                          DateTime date = DateTime.parse(
                            snapshot.data![index].timestamp ?? "12",
                          );
                          //if the time is consumme large than 24 it will not delay
                          if (hoursBetween(date, DateTime.now()) > 1) {
                            developer.log(
                                snapshot.data![index]._salad.length.toString());
                            return WidgetRequest(
                              id: snapshot.data![index]._id ?? "0",
                              firstName:
                                  snapshot.data![index]._firstname ?? "1",
                              lastName: snapshot.data![index]._lastname ?? "2",
                              phoneNumber: snapshot.data![index]._phone ?? "3",
                              country: snapshot.data![index]._country ?? "4",
                              state: snapshot.data![index]._state ?? "5",
                              city: snapshot.data![index]._city ?? "6",
                              email: snapshot.data![index]._email ?? "7",
                              payment: snapshot.data![index]._payment ?? "8",
                              adress: snapshot.data![index]._adress ?? "9",
                              sailAll: snapshot.data![index]._sailAll ?? "10",
                              salad: snapshot.data![index]._salad,
                              timestamp:
                                  snapshot.data![index].timestamp ?? "12",
                            );
                          } else {
                            return null;
                          }
                        },
                      ))));
            } else {
              // no data
              return CErrorMassage(massage: MLanguages.nodata);
            }
          } else {
            // no active
            return CErrorMassage(massage: MLanguages.noconnect);
          }
        });
  }

  ///[hoursBetween] its calculate diferrance between two dates
  int hoursBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours);
  }
}

part of './../../import/import.dart';

class ViewRequestDesc extends StatelessWidget {
  const ViewRequestDesc({
    super.key,
    required this.salad,
    required this.id,
    required this.name,
    required this.email,
    required this.adress,
    required this.country,
    required this.payment,
    required this.timestamp,
    required this.phone,
    required this.sail,
  });
  final List<MDatabasePasket> salad;
  final String id;
  final String name;
  final String email;
  final String phone;
  final String timestamp;
  final String payment;
  final String sail;
  final String adress;
  final String country;

  @override
  Widget build(BuildContext context) {
    //isEnglish or not
    bool isEnglish(BuildContext context) =>
        context.locale.languageCode == 'en' ? true : false;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(MIcons.arrowbac),
          ),
        ),
        body: Column(children: [
          MDime.md.horizontalSpace,
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
            child: AnimationLimiter(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    itemCount: salad.length,
                    itemBuilder: (BuildContext context, int index) {
                      developer.log(salad.length.toString());
                      return AnimationConfiguration.staggeredList(
                          position: index,
                          delay: const Duration(milliseconds: 100),
                          child: SlideAnimation(
                              duration: const Duration(milliseconds: 2500),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child: Column(
                                children: [
                                  FadeInAnimation(
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      duration:
                                          const Duration(milliseconds: 2500),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            WPacketSalad(
                                                url: salad[index].image ?? '',
                                                data: (isEnglish(context)
                                                        ? salad[index]
                                                            .englishName
                                                        : salad[index]
                                                            .arabicName) ??
                                                    '',
                                                sail: (salad[index].sail ?? 0) *
                                                    (salad[index].counter ?? 0),
                                                counter:
                                                    salad[index].counter ?? 0,
                                                index: index),
                                          ])),
                                  5.verticalSpace
                                ],
                              )));
                    })),
          )),
          //widget for text and this value
          WIdgetRequestField(name: MLanguages.id, value: id),
          WIdgetRequestField(name: MLanguages.email, value: email),
          WIdgetRequestField(name: MLanguages.customerName, value: name),
          WIdgetRequestField(name: MLanguages.phone, value: phone),
          WIdgetRequestField(name: MLanguages.countryName, value: country),
          WIdgetRequestField(name: MLanguages.adress, value: adress),
          WIdgetRequestField(name: MLanguages.totalSails, value: "${sail}JD"),
          WIdgetRequestField(name: MLanguages.payMethod, value: payment),
          WIdgetRequestField(name: MLanguages.timestamp, value: timestamp),
        ]));
  }
}

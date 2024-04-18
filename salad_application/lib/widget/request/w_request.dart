part of './../../import/import.dart';

class WidgetRequest extends StatelessWidget {
  const WidgetRequest(
      {super.key,
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      required this.country,
      required this.city,
      required this.state,
      required this.email,
      required this.adress,
      required this.timestamp,
      required this.salad,
      required this.sailAll,
      required this.payment});
  final String id;

  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String country;
  final String city;
  final String state;
  final String email;
  final String payment;
  final String adress;
  final String sailAll;
  final List<MDatabasePasket> salad;
  final String timestamp;

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.parse(timestamp);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: ThemeColor.blueMagenta,
        child: InkWell(
          onTap: () {
            developer.log(salad.length.toString());
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ViewRequestDesc(
                        salad: salad,
                        id: id,
                        name: "$firstName  $lastName",
                        email: email,
                        adress: adress,
                        country: "$country $state $city ",
                        payment: payment,
                        timestamp: timestamp,
                        phone: phoneNumber,
                        sail: sailAll)));
          },
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Text(
                email,
                style: ThemeTextStyle.tLarge(context),
              ),
            ),
            Divider(
              color: DarkLightTheme.isDark(context)
                  ? ThemeColor.green
                  : ThemeColor.red,
            ),
            Text("${MLanguages.id.tr()}: $id"),
            MDime.sm.verticalSpace,
            Text("${MLanguages.customerName.tr()}: $firstName $lastName"),
            MDime.sm.verticalSpace,
            Text("${MLanguages.phone.tr()}: $phoneNumber"),
            MDime.sm.verticalSpace,
            Text("${MLanguages.adress.tr().tr()}: $country $state $city"),
            MDime.sm.verticalSpace,
            Text(DateFormat.yMMMMd().add_jm().format(date)),
          ]),
        ),
      ),
    );
  }
}

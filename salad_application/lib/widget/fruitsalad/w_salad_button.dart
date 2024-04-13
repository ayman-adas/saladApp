part of '../../import/import.dart';

// ignore: must_be_immutable
class WSaladButton extends StatelessWidget {
  WSaladButton({super.key, required this.counter, required this.salad});
  final MFruitSalad salad;
  int counter;
  @override
  Widget build(BuildContext context) {
    bool isEnglish(BuildContext context) =>
        context.locale.languageCode == 'en' ? true : false;
    return Card(
      child: Container(
          height: MDime.d3 * 690 - 600.h,
          color: const Color.fromARGB(41, 90, 75, 75),
          child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  int counter2 = counter;
                  if (counter == 0) {
                    counter2 = 1;
                  }
                  return VQuantity(
                    salad: salad,
                    counter: counter2,
                    counter2: counter,
                  );
                }));
              },
              child: Expanded(
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ClipRect(
                      child: CircleAvatar(
                          backgroundColor: DarkLightTheme.isDark(context)
                              ? ThemeColor.green
                              : ThemeColor.red,
                          backgroundImage: NetworkImage(salad.getImageUrl),
                          radius: 100.0),
                    ),
                  ),
                  MDime.l.verticalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                            (isEnglish(context)
                                    ? salad.getEnglishName
                                    : salad._arabicName) ??
                                '',
                            style: ThemeTextStyle.tMedium(context)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 28.0),
                        child: Row(children: [
                          const Icon(Icons.money_outlined, color: Colors.green),
                          const SizedBox(width: 4),
                          Text(
                            "${salad.getsalary}JD",
                            style: ThemeTextStyle.lLarge(context),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ]),
                      ),
                    ],
                  )
                ]),
              ))),
    );
  }
}

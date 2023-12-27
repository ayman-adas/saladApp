part of '../import/import.dart';

// ignore: must_be_immutable
class WSaladButton extends StatelessWidget {
  WSaladButton(
      {super.key,
      required this.url,
      required this.data,
      required this.sail,
      required this.counter,
      required this.index});

  final String url;
  final String data;
  int sail;
  int counter;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          height: MDime.d3 * 690 - 600.h,
          color: Colors.transparent,
          margin: const EdgeInsets.all(5),
          child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  int counter2 = counter;
                  if (counter == 0) {
                    counter2 = 1;
                  }
                  return VQuantity(
                    index: index,
                    data: data,
                    url: url,
                    sail: sail,
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
                      child: Expanded(
                        flex: 2,
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            url,
                          ),
                          width: MDime.d1 * 360 - 250.w,
                          height: MDime.d1 * 690 - 450.h,
                        ),
                      )),
                  10.verticalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(data.tr(),
                            style: ThemeTextStyle.tMedium(context)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 28.0),
                        child: Row(children: [
                          const Icon(Icons.money_outlined, color: Colors.grey),
                          const SizedBox(width: 4),
                          Text(
                            "${sail}JD",
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

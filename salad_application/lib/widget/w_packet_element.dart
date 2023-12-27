part of '../import/import.dart';

// ignore: must_be_immutable
class WPacketSalad extends StatelessWidget {
  WPacketSalad(
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
            margin: const EdgeInsets.all(5).w,
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
                5.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30).h,
                      child: Text(data.tr(),
                          style: ThemeTextStyle.tMedium(context)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2.0).h,
                      child: Row(children: [
                        const Icon(Icons.money_outlined, color: Colors.grey),
                        4.verticalSpace,
                        Text(
                          "$sail JD",
                          style: ThemeTextStyle.lLarge(context),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0).h,
                      child: Text(
                        " ${MLanguages.counter.tr()}:$counter",
                        style: ThemeTextStyle.tSmall(context),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                )
              ]),
            )));
  }
}

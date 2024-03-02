part of './../../import/import.dart';

// ignore: must_be_immutable
class WAssistanceAnswer extends StatelessWidget {
  const WAssistanceAnswer(
      {super.key, required this.url, required this.desc, required this.name});

  final String url;
  final String name;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          height: MDime.d3 * 690 - 600.h,
          color: const Color.fromARGB(41, 90, 75, 75),
          child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return VAnswerDesc(
                    data: name,
                    url: url,
                    desc: desc,
                  );
                }));
              },
              child: Expanded(
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: CircleAvatar(
                        backgroundColor: DarkLightTheme.isDark(context)
                            ? ThemeColor.green
                            : ThemeColor.red,
                        backgroundImage: NetworkImage(url),
                        radius: 100.0),
                  ),
                  MDime.l.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(name, style: ThemeTextStyle.tMedium(context)),
                  ),
                ]),
              ))),
    );
  }
}

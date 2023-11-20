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
            height: 130,
            color: Colors.transparent,
            margin: const EdgeInsets.all(5),
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
                        width: 100,
                        height: 100,
                      ),
                    )),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        data,
                        style: GoogleFonts.abel(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child: Row(children: [
                        const Icon(Icons.money_outlined, color: Colors.grey),
                        const SizedBox(width: 4),
                        Text(
                          "$sail JD",
                          style: GoogleFonts.abel(fontSize: 16),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        " ${MLanguages.counter.tr()}:$counter",
                        style: GoogleFonts.abel(fontSize: 16),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                )
              ]),
            )));
  }
}

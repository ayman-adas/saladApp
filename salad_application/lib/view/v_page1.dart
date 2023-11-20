part of '../import/import.dart';

class VPage1 extends StatelessWidget {
  const VPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Container(
            height: 500,
            color: const Color.fromARGB(255, 255, 200, 0),
            child: Image.asset(
              "assets/page1.png",
              height: 400,
            ),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(5, 50, 0, 0),
              child: const Text(
                MLanguages.page1title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ).tr()),
          Container(
              padding: const EdgeInsets.fromLTRB(30, 25, 0, 0),
              child: const Text(
                MLanguages.page1body,
                style: TextStyle(fontSize: 17),
              ).tr()),
        ]));
  }
}

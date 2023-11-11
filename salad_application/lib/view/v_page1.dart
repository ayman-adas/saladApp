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
            height: 450,
            color: const Color.fromARGB(255, 255, 200, 0),
            child: Image.asset(
              "assets/page1.png",
              height: 400,
            ),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(5, 50, 0, 0),
              child: const Text(
                MPage1.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 25, 0, 0),
            child: const Text(
              MPage1.body,
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(5, 45, 0, 00),
              child: ElevatedButton(
                style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(340, 60)),
                    backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                child: const Text(
                  MPage1.button,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  // ignore: unrelated_type_equality_checks

                  Navigator.push(context, CSlideTranstion(const VPage2()));
                },
              ))
        ]));
  }
}

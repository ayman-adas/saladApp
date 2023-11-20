part of '../import/import.dart';

class VPage2 extends StatefulWidget {
  const VPage2({super.key});

  @override
  State<VPage2> createState() => _VPage2State();
}

class _VPage2State extends State<VPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450,
              color: const Color.fromARGB(255, 255, 200, 0),
              child: Image.asset(
                "assets/page2.jpeg",
                height: 400,
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(5, 50, 0, 0),
                child: Text(
                  MLanguages.page2title,
                  style: UtilsTheme.tLarge(context),
                ).tr()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: MLanguages.page2hint.tr(),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 45, 10, 00),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        minimumSize:
                            MaterialStatePropertyAll(Size(double.infinity, 60)),
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 255, 200, 0),
                        )),
                    child: const Text(MLanguages.page2button,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        )).tr(),
                    onPressed: () {
                      if (!textController.value.text.isUsername()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return CErrorMassage(
                            massage: MLanguages.page2errorMassage.tr(),
                            callback: () => Navigator.pop(context),
                          );
                        }));
                      } else {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const VTestNetwok();
                        }));
                      }
                    }))
          ],
        ),
      ),
    );
  }
}

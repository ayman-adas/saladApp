import 'package:flutter/material.dart';
import 'package:fruit_salad/controller/c_slide_translation.dart';
import 'package:fruit_salad/model/m_page2.dart';
import 'package:fruit_salad/view/v_page3.dart';
import 'package:fruit_salad/controller/c_error_massage.dart';
import 'package:regexpattern/regexpattern.dart';

class VPage2 extends StatefulWidget {
  const VPage2({super.key});

  @override
  State<VPage2> createState() => _VPage2State();
}

class _VPage2State extends State<VPage2> {
  final TextEditingController textController = TextEditingController();

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
                child: const Text(
                  MPage2.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ayman',
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
                    child: const Text(
                      MPage2.button,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      if (!textController.value.text.isUsername()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const CErrorMassage(
                            massage: MPage2.error,
                          );
                        }));
                      } else {
                        Navigator.push(
                            context,
                            CSlideTranstion(VPage3(
                              name: textController.value.text,
                            )));
                      }
                    })),
          ],
        ),
      ),
    );
  }
}

part of '../import/import.dart';

class VHome extends StatefulWidget {
  const VHome({super.key});

  @override
  State<VHome> createState() => _VHomeState();
}

class _VHomeState extends State<VHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: OnBoardingSlider(
      controllerColor: const Color.fromARGB(255, 255, 200, 0),
      headerBackgroundColor: const Color.fromARGB(255, 255, 200, 0),
      background: [
        Image.asset('assets/page1.png'),
        Image.asset('assets/page2.jpeg'),
      ],
      totalPage: 2,
      speed: 1.8,
      pageBodies: const [VPage1(), VPage2()],
    ));
  }
}

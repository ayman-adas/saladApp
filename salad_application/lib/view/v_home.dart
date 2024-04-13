part of '../import/import.dart';

class VHome extends StatefulWidget {
  const VHome({super.key});

  @override
  State<VHome> createState() => _VHomeState();
}

class _VHomeState extends State<VHome> {
  @override
  Widget build(BuildContext context) {
    IconData icon(BuildContext context) {
      return ThemeTestphone.isIos(context)
          ? MIcons.arowforcurp
          : MIcons.arowfor;
    }

    return Scaffold(
        body: OnBoardingSlider(
      controllerColor: ThemeColor.gold,
      headerBackgroundColor: ThemeColor.bluefateh,
      skipIcon: Icon(
        icon(context),
        color:
            DarkLightTheme.isDark(context) ? ThemeColor.green : ThemeColor.red,
      ),
      background: [
        Image.asset('assets/page1.png'),
        Image.asset('assets/page2.jpeg'),
      ],
      totalPage: 2,
      speed: 1.8,
      pageBodies: const [VPage1(), VLogin()],
    ));
  }
}

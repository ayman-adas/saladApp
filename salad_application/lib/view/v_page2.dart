part of '../import/import.dart';

class VPage2 extends StatefulWidget {
  const VPage2({super.key});

  @override
  State<VPage2> createState() => _VPage2State();
}

class _VPage2State extends State<VPage2> {
  @override
  Widget build(BuildContext context) {
//     Widget buttom(
//       BuildContext context,
//     ) {
//       return ThemeTestphone.isIos(context)
//           ? CupertinoButton(
//               color: ThemeColor.gold,
//               minSize: MDime.quarter * 360 - 30.h,
//               onPressed: () {
//                 RegExp regex = RegExp(r'^[a-zA-Z\u0600-\u06FF\s]{2,}$',
//                     caseSensitive: false);

//                 if (!regex.hasMatch(textController.text)) {
//                   Dialogs.materialDialog(
//                     title: MLanguages.page2errorMassage.tr(),
//                     context: context,
//                     color: Colors.white,
//                     onClose: (value) {},
//                     titleStyle: TextStyle(fontSize: 20.sp, color: Colors.black),
//                     actions: [
//                       IconsButton(
//                         onPressed: () {
//                           Navigator.of(context).pop(['Test', 'List']);
//                         },
//                         text: MLanguages.ok.tr(),
//                         textStyle: ThemeTextStyle.tLarge(context)?.copyWith(
//                           color: DarkLightTheme.isDark(context)
//                               ? ThemeColor.green
//                               : ThemeColor.red,
//                         ),
//                         color: ThemeColor.gold,
//                       ),
//                     ],
//                   );
//                 } else {
//                   Navigator.pushNamed(context, MRouteName.networkTest);
//                 }
//               },
//               child: Text(MLanguages.page2button.tr(),
//                   style: ThemeTextStyle.tLarge(context)))
//           : ElevatedButton(
//               style: ButtonStyle(
//                 minimumSize: MaterialStatePropertyAll(Size(
//                     (MDime.fullScreen * 630).w, MDime.quarter * 360 - 30.h)),
//                 backgroundColor: MaterialStatePropertyAll(ThemeColor.gold),
//                 foregroundColor: MaterialStatePropertyAll(
//                   DarkLightTheme.isDark(context)
//                       ? ThemeColor.green
//                       : ThemeColor.red,
//                 ),
//               ),
//               child: Text(MLanguages.page2button,
//                       style: ThemeTextStyle.tLarge(context))
//                   .tr(),
//               onPressed: () {
//                 RegExp regex = RegExp(r'^[a-zA-Z\u0600-\u06FF\s]{2,}$',
//                     caseSensitive: false);

//                 if (!regex.hasMatch(textController.text)) {
//                   Dialogs.materialDialog(
//                     title: MLanguages.page2errorMassage.tr(),
//                     context: context,
//                     color: Colors.white,
//                     onClose: (value) {},
//                     titleStyle: TextStyle(fontSize: 20.sp, color: Colors.black),
//                     actions: [
//                       IconsButton(
//                         onPressed: () {
//                           Navigator.of(context).pop(['Test', 'List']);
//                         },
//                         text: MLanguages.ok.tr(),
//                         textStyle: ThemeTextStyle.tLarge(context),
//                         color: ThemeColor.gold,
//                       ),
//                     ],
//                   );
//                 } else {
//                   Navigator.pushNamed(context, MRouteName.networkTest);
//                 }
//               });
//     }

    return const Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: (MDime.half * 690).h,
//               color: const Color.fromARGB(255, 255, 200, 0),
//               child: Image.asset(
//                 "assets/page2.jpeg",
//                 height: (MDime.half * 690 - 100).h,
//               ),
//             ),
//             Container(
//                 padding: const EdgeInsets.fromLTRB(5, 50, 0, 0),
//                 child: Text(
//                   MLanguages.page2title,
//                   style: ThemeTextStyle.hSmall(context),
//                 ).tr()),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 maxLength: 10,
//                 cursorColor: DarkLightTheme.isDark(context)
//                     ? ThemeColor.green
//                     : ThemeColor.red,
//                 controller: textController,
//                 decoration: InputDecoration(
//                     filled: true,
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(25.7),
//                     ),
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(
//                         color: DarkLightTheme.isDark(context)
//                             ? ThemeColor.green
//                             : ThemeColor.red,
//                       ),
//                       borderRadius: BorderRadius.circular(25.7),
//                     ),
//                     hintText: MLanguages.page2hint.tr(),
//                     hintStyle: const TextStyle(
//                         fontSize: MDime.md + 4, fontWeight: FontWeight.w200)),
//                 textAlign: TextAlign.start,
//               ),
//             ),
//             Padding(
//                 padding: const EdgeInsets.fromLTRB(10, 45, 10, 00),
//                 child: buttom(context))
//           ],
//         ),
//       ),
        );
  }
}

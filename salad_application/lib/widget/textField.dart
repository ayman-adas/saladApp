// ignore_for_file: file_names, must_be_immutable

part of '../import/import.dart';

class WTextField extends StatefulWidget {
  WTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.isPass = false,
      this.isNotShowPass = true});
  final TextEditingController? controller;
  final String hintText;
  final bool isPass;
  bool isNotShowPass;

  @override
  State<WTextField> createState() => _WTextFieldState();
}

class _WTextFieldState extends State<WTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MDime.third * 960.w,
      child: TextFormField(
        cursorColor:
            DarkLightTheme.isDark(context) ? ThemeColor.green : ThemeColor.red,
        controller: widget.controller,
        obscureText: widget.isPass,
        obscuringCharacter: '*',
        decoration: InputDecoration(
            // prefixIcon: const Icon(CupertinoIcons.eye),
            // suffixIcon: widget.isPass
            //     ? Consumer<ControllerAuthSecurityPass>(
            //         builder: (context, pSecurityPass, child) {
            //           return IconButton(
            //             onPressed: () {
            //               if (widget.isNotShowPass) {
            //                 // show pass
            //                 widget.isNotShowPass = false;
            //                 const Icon(CupertinoIcons.eye_slash);
            //                 setState(() {});
            //               } else {
            //                 // no show pass
            //                 widget.isNotShowPass = true;
            //                 const Icon(CupertinoIcons.eye);
            //               }
            //               // reDraw
            //               setState(() {});
            //             },
            //             icon: const Icon(CupertinoIcons.eye_slash),
            //           );
            //         },
            //       )
            //     : null,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.7),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: DarkLightTheme.isDark(context)
                    ? ThemeColor.green
                    : ThemeColor.red,
              ),
              borderRadius: BorderRadius.circular(25.7),
            ),
            hintText: widget.hintText.tr(),
            hintStyle: const TextStyle(
                fontSize: MDime.md + 4, fontWeight: FontWeight.w200)),
        textAlign: TextAlign.right,
      ),
    );
  }
}

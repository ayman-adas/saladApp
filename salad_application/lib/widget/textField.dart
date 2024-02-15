// ignore_for_file: file_names, must_be_immutable

part of '../import/import.dart';

class WidgetTextField extends StatelessWidget {
  const WidgetTextField({
    super.key,
    // General
    this.controller,
    this.keyboardType,
    this.initialValue,
    this.isPass = false,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.maxLines = 1,
    this.minLines,
    // decoration
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.labelText,
    this.hintText,
    this.helperText,
    this.iconBefore,
    this.isShowIconPass = false,
  });

  // General
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? initialValue;
  final bool isPass;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final int? minLines;
  final int? maxLines;
  // decoration
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? iconBefore;
  final bool isShowIconPass;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // General
      controller: controller,
      // close keyboard when click outside text field
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      cursorColor:
          DarkLightTheme.isDark(context) ? ThemeColor.green : ThemeColor.red,

      keyboardType: keyboardType,
      initialValue: initialValue,
      obscureText: isPass,
      obscuringCharacter: '✤',
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
      minLines: minLines,
      maxLines: maxLines,
      // Decoration
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: labelText?.tr(),
        labelStyle: ThemeTextStyle.lLarge(context)
            ?.copyWith(fontWeight: FontWeight.bold),
        hintText: hintText?.tr(),
        helperText: helperText?.tr(),
        helperMaxLines: 2,
        helperStyle: ThemeTextStyle.lLarge(context)
            ?.copyWith(fontWeight: FontWeight.w200),
        // icon
        prefixIcon: Icon(iconBefore),
        suffixIcon: isShowIconPass
            ? Consumer<ControllerAuthSecurityPass>(
                builder: (context, pSecurityPass, child) {
                  return IconButton(
                    onPressed: pSecurityPass.handelPass,
                    icon: Icon(pSecurityPass.iconEye),
                  );
                },
              )
            : null,

        // Border Style
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MDime.l.w),
          borderSide: BorderSide(
            color: DarkLightTheme.isDark(context)
                ? ThemeColor.white
                : ThemeColor.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MDime.l.w),
          borderSide:
              BorderSide(color: focusedBorderColor ?? ThemeColor.deepOrange),
        ),

        // error
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MDime.l.w),
          borderSide: BorderSide(color: ThemeColor.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MDime.l.w),
          borderSide: BorderSide(color: ThemeColor.teal),
        ),
        errorMaxLines: 2,
      ),
    );
  }
}

part of '../../import/import.dart';

class ViewSaladUpload extends StatelessWidget {
  const ViewSaladUpload({super.key});

  /// [_keyForm] controller Widget `Form`
  static final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    /// [spaceVertical]  SizedBox 16 height
    SizedBox spaceVertical = MDime.l.verticalSpace;
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {
        // true back page
        // false no back page
        if (didPop) {
          ControllerImage image =
              Provider.of<ControllerImage>(context, listen: false);
          image.resetImage();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeColor.appbar,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MDime.md).w,
            child: Form(
              key: _keyForm,
              child: Column(
                children: [
                  // space
                  spaceVertical,

                  // user image
                  const WidgetImage(),

                  // space
                  spaceVertical,

                  // username
                  const WidgetFruitsaladName(),

                  // space
                  spaceVertical,

                  //email
                  const WidgetFruitsaladName(isEnglish: false),

                  // space
                  spaceVertical,

                  // pass
                  const WidgetFruitsaladSalary(),

                  // space
                  spaceVertical,

                  Consumer<CFruitsalad>(
                    builder: (context, frutisalad, child) {
                      return WidgetBtn(
                          title: MLanguages.saladUpload.tr(),
                          onTap: () async {
                            if (_keyForm.currentState?.validate() ?? false) {
                              // save data
                              _keyForm.currentState?.save();

                              if (!(await frutisalad.upload(context))) {
                                // show toast error massage
                                if (context.mounted) {
                                  WidgetToast.buildToast(
                                    context: context,
                                    msg: frutisalad.setErrorMessage ?? '',
                                    translation: false,
                                  );
                                }
                              } else {
                                // ✅
                                if (context.mounted) {
                                  frutisalad.resetData(context);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(MLanguages.complete.tr(),
                                          style: const TextStyle(
                                              color: Colors.white)),
                                      backgroundColor:
                                          DarkLightTheme.isDark(context)
                                              ? ThemeColor.grey
                                              : ThemeColor.red,
                                    ),
                                  );
                                }
                              }
                            }
                          });
                    },
                  ),
                  // button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

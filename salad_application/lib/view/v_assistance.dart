part of './../import/import.dart';

class VAssistance extends StatelessWidget {
  const VAssistance({super.key});

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
                  const WidgetAssistanceName(),

                  // space
                  spaceVertical,

                  const WidgetAssistanceDesc(),

                  // space
                  spaceVertical,

                  Consumer<CAssisitance>(
                    builder: (context, assistance, child) {
                      return WidgetBtn(
                          title: MLanguages.saladUpload.tr(),
                          onTap: () async {
                            if (_keyForm.currentState?.validate() ?? false) {
                              // save data
                              _keyForm.currentState?.save();

                              if (!(await assistance.upload(context))) {
                                // show toast error massage
                                if (context.mounted) {
                                  WidgetToast.buildToast(
                                    context: context,
                                    msg: assistance.setErrorMessage ?? '',
                                    translation: false,
                                  );
                                }
                              } else {
                                // ✅
                                if (context.mounted) {
                                  assistance.resetData(context);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(MLanguages.complete.tr(),
                                          style: const TextStyle(
                                              color: Colors.white)),
                                      backgroundColor:
                                          DarkLightTheme.isDark(context)
                                              ? ThemeColor.green
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

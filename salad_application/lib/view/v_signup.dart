part of './../import/import.dart';
// ignore_for_file: unused_element


class VSignUp extends StatefulWidget {
  const VSignUp({super.key});

  @override
  State<VSignUp> createState() => _VSignUpState();
}

class _VSignUpState extends State<VSignUp> {
  @override
  Widget build(BuildContext context) {
    ControllerAuthImageUser controllerImage =
        Provider.of<ControllerAuthImageUser>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0).h,
        child: Center(
          child: Column(
            children: [
              Container(
                width: MDime.d1 * 100.w,
                height: MDime.d1 * 100.w,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: DarkLightTheme.isDark(context)
                            ? ThemeColor.green
                            : ThemeColor.red,
                        width: MDime.sm),
                    shape: BoxShape.circle,
                    image:
                        DecorationImage(image: controllerImage.getImageUser())),
                child: InkWell(
                  onTap: () {
                    showFlexibleBottomSheet(
                      context: context,
                      builder: (context, scrollController, bottomSheetOffset) =>
                          const WidgetDesignBottomSheet(),
                      isSafeArea: true,
                    );
                    (
                      elevation: MDime.sm,
                      context: context,
                      builder: (context) => Row(children: [
                            Expanded(
                              child: WImageAuth(
                                  url: MSadalPictureListItem.gallery,
                                  data: MLanguages.gallery,
                                  onTap: () {
                                    controllerImage.selectImage(context);
                                  }),
                            ),
                            Expanded(
                              child: WImageAuth(
                                  url: MSadalPictureListItem.camera,
                                  data: MLanguages.camera,
                                  onTap: () {
                                    controllerImage.selectImage(context,
                                        isGallery: false);
                                  }),
                            )
                          ])
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

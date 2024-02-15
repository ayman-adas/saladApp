part of './../import/import.dart';

class WidgetDesignBottomSheet extends StatelessWidget {
  const WidgetDesignBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // create controller image user
    ControllerImage authImage =
        Provider.of<ControllerImage>(context, listen: false);
    return SizedBox(
        height: (MDime.xxxxl).h,
        child: Column(
          children: [
            // title
            Flexible(
                child: Text(
              MLanguages.choosePicture.tr(),
              style: ThemeTextStyle.dSmall(context),
            )),

            // space
            MDime.l.verticalSpace,

            // choice gallery or camera
            Row(
              children: [
                Expanded(
                  child: WImageAuth(
                    url: MSadalPictureListItem.gallery,
                    data: MLanguages.gallery,
                    onTap: () => authImage.selectImage(context, true),
                  ),
                ),
                Expanded(
                  child: WImageAuth(
                    url: MSadalPictureListItem.camera,
                    data: MLanguages.camera,
                    onTap: () => authImage.selectImage(context, false),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

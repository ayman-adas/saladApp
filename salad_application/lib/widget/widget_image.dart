part of '../import/import.dart';

class WidgetImage extends StatelessWidget {
  const WidgetImage({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerImage controllerImage = Provider.of<ControllerImage>(context);
    return InkWell(
      borderRadius: BorderRadius.circular(MDime.xxl.w),
      onTap: () {
        // bottom Sheet
        showFlexibleBottomSheet(
          context: context,
          builder: (context, scrollController, bottomSheetOffset) {
            return const WidgetDesignBottomSheet();
          },
        );
      },
      child: Stack(
        children: [
          Ink(
            width: MDime.xxxxl.w,
            height: MDime.xxxxl.w,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                  color: DarkLightTheme.isDark(context)
                      ? ThemeColor.green
                      : ThemeColor.red,
                  width: MDime.xs.w),
              image: DecorationImage(
                  image: controllerImage.getImageUser(false), fit: BoxFit.fill),
            ),
          ),
          PositionedDirectional(
            bottom: 0,
            end: 5,
            child:
                Icon(MIcons.pencil, size: MDime.xl.w, color: ThemeColor.teal),
          )
        ],
      ),
    );
  }
}

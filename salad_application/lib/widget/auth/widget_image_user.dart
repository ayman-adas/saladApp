part of './../../import/import.dart';

class WidgetAuthImageUser extends StatelessWidget {
  const WidgetAuthImageUser({super.key});

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
            width: MDime.xxxl.w,
            height: MDime.xxxl.w,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border:
                  Border.all(color: ThemeColor.redAccent, width: MDime.xs.w),
              image: DecorationImage(
                  image: controllerImage.getImageUser(), fit: BoxFit.fill),
            ),
          ),
          PositionedDirectional(
            bottom: 0,
            end: 5,
            child: Icon(
              CupertinoIcons.pencil_circle_fill,
              size: MDime.xl.w,
              color: ThemeColor.red,
            ),
          )
        ],
      ),
    );
  }
}

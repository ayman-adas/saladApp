part of '../import/import.dart';

class CDrawerHead extends StatelessWidget {
  const CDrawerHead({super.key});

  @override
  Widget build(BuildContext context) {
    //provider
    ControllerAuth auth = Provider.of<ControllerAuth>(context, listen: false);
    return Padding(
      //padding
      padding: const EdgeInsets.all(MDime.l),
      child: Column(
        children: [
          Container(
            //image
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: DarkLightTheme.isDark(context)
                      ? ThemeColor.green
                      : ThemeColor.red,
                  width: MDime.xs),
            ),
            //circle picture for user
            child: CircleAvatar(
                backgroundColor: DarkLightTheme.isDark(context)
                    ? ThemeColor.green
                    : ThemeColor.red,
                backgroundImage: NetworkImage(auth.userPhoto),
                radius: 50.0),
          ),

          MDime.sm.verticalSpace,
          //username

          Text(
            auth.userName,
            style: ThemeTextStyle.bLarge(context),
          ),
        ],
      ),
    );
  }
}

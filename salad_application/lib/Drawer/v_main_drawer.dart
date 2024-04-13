part of '../import/import.dart';

class VMainDrawer extends StatelessWidget {
  const VMainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    //drawer
    return Drawer(
      elevation: MDime.sm,
      child: SafeArea(
        child: Column(
          children: [
            //head
            const CDrawerHead(),
            Divider(
              color: DarkLightTheme.isDark(context)
                  ? ThemeColor.green
                  : ThemeColor.red,
            ),
            //service
            const CDraerrServer()
          ],
        ),
      ),
    );
  }
}

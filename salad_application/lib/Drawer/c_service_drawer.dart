part of '../import/import.dart';

class CDraerrServer extends StatelessWidget {
  const CDraerrServer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MDime.l),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //bottom for search
            CServiceTabs(
                icon: MIcons.searchOutlined,
                title: MLanguages.searchLabel,
                onTap: () =>
                    showSearch(context: context, delegate: WSearch.searcch)),
            //bottom for packet
            CServiceTabs(
                icon: MIcons.shoppingOutlined,
                title: MLanguages.packet,
                onTap: () {
                  Navigator.pushNamed(context, MRouteName.packet);
                }),
            //bottom for change theam
            CServiceTabs(
              icon: MIcons.themeOutlined,
              title: MLanguages.apperance,
              onTap: () {
                Navigator.pushNamed(context, MRouteName.themeChange);
              },
            ),
            //bottom for change language
            CServiceTabs(
              icon: MIcons.langOutlined,
              title: MLanguages.language,
              onTap: () {
                Navigator.pushNamed(context, MRouteName.langhange);
              },
            ),
            //bottom for assistance question
            CServiceTabs(
              icon: MIcons.question,
              title: MLanguages.assistacne,
              onTap: () {
                Navigator.pushNamed(context, MRouteName.assistance);
              },
            ),
            //bottom for about us
            CServiceTabs(
              icon: MIcons.aboutOutlined,
              title: MLanguages.about,
              onTap: () {
                Navigator.pushNamed(context, MRouteName.about);
              },
            ),
            //bottom for sign out
            CServiceTabs(
                icon: MIcons.signOut,
                title: MLanguages.signOut,
                onTap: () {
                  Navigator.pushNamed(context, MRouteName.signout);
                })
          ],
        ),
      ),
    );
  }
}

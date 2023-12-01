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
            CServiceTabs(
              icon: MIcons.accountoutlier,
              title: MLanguages.account,
              onTap: () {},
            ),
            CServiceTabs(
                icon: MIcons.searchOutlined,
                title: MLanguages.searchLabel,
                onTap: () {
                  showSearch(
                      context: context,
                      delegate: SearchPage<WSaladButton>(
                          searchStyle: const TextStyle(),
                          items: MPage3.list,
                          searchLabel: MLanguages.searchLabel.tr(),
                          suggestion: Center(
                            child: const Text(MLanguages.suggestion).tr(),
                          ),
                          failure: Center(
                            child: const Text(MLanguages.failure).tr(),
                          ),
                          filter: (WSaladButton salad) => [
                                salad.data,
                              ],
                          builder: (
                            WSaladButton salad,
                          ) =>
                              ListTile(
                                title: salad,
                              )));
                }),
            CServiceTabs(
                icon: MIcons.shoppingOutlined,
                title: MLanguages.packet,
                onTap: () {
                  Navigator.pushNamed(context, MRouteName.packet);
                }),
            CServiceTabs(
              icon: MIcons.themeOutlined,
              title: MLanguages.apperance,
              onTap: () {},
            ),
            CServiceTabs(
              icon: MIcons.langOutlined,
              title: MLanguages.language,
              onTap: () {},
            ),
            CServiceTabs(
              icon: MIcons.aboutOutlined,
              title: MLanguages.about,
              onTap: () {
                Navigator.pushNamed(context, MRouteName.about);
              },
            ),
            CServiceTabs(
                icon: MIcons.signOut,
                title: MLanguages.signOut,
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}

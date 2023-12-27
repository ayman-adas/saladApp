// ignore_for_file: file_names

part of '../import/import.dart';

class VPage3 extends StatelessWidget {
  VPage3({super.key, required this.name});
  final String name;

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    IconData iconShopping(BuildContext context) {
      return ThemeTestphone.isIos(context)
          ? MIcons.shoppingcupr
          : MIcons.shopping;
    }

    IconData iconSearch(BuildContext context) {
      return ThemeTestphone.isIos(context) ? MIcons.searchcurp : MIcons.search;
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => showSearch(
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
                          ))),
              icon: Icon(iconSearch(context))),
          IconButton.outlined(
            onPressed: () {
              Navigator.pushNamed(context, MRouteName.packet);
            },
            icon: Icon(iconShopping(context)),
          )
        ],
      ),
      drawer: const VMainDrawer(),
      body: Column(children: [
        SizedBox(
            height: MDime.d1 * 690 - 500.h,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0).w,
                child: Column(children: [
                  Text(
                      "${MLanguages.hello.tr()} $name ${MLanguages.page3title.tr()}",
                      style: ThemeTextStyle.tMedium(context)),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0).h,
                    child: Text(MLanguages.saladcombo,
                            style: ThemeTextStyle.hMedium(context))
                        .tr(),
                  ),
                ]))),
        Divider(
          color: DarkLightTheme.isDark(context)
              ? ThemeColor.green
              : ThemeColor.red,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: MDime.d3 * 690 - 600.h,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: MPage3.list.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                    width: MDime.d4 * 690 - 600.w, child: MPage3.list[index]);
              },
            ),
          ),
        ),
        Divider(
          color: DarkLightTheme.isDark(context)
              ? ThemeColor.green
              : ThemeColor.red,
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemCount: MPage3.list.length,
            itemBuilder: (BuildContext context, int index) {
              return MPage3.list[index];
            },
          ),
        ),
      ]),
    );
  }
}

// ignore_for_file: file_names

part of '../import/import.dart';

class VPage3 extends StatelessWidget {
  VPage3({super.key, required this.name});
  final String name;

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              icon: const Icon(
                Icons.search_rounded,
              )),
          IconButton.outlined(
              onPressed: () {
                Navigator.pushNamed(context, MRouteName.packet);
              },
              icon: const Icon(
                Icons.shopping_basket_outlined,
              ))
        ],
      ),
      drawer: const Drawer(),
      body: Column(children: [
        SizedBox(
            height: MDime.d1 * 690 - 460.h,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(children: [
                  Text(
                      "${MLanguages.hello.tr()} $name ${MLanguages.page3title.tr()}",
                      style: ThemeTextStyle.tMedium(context)),
                  Divider(
                    color: ThemeColor.green,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(MLanguages.saladcombo,
                            style: ThemeTextStyle.hMedium(context))
                        .tr(),
                  ),
                ]))),
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

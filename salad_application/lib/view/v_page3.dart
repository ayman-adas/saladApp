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
        leading: const Icon(
          Icons.menu,
        ),
        actions: [
          IconButton(
              onPressed: () => showSearch(
                  context: context,
                  delegate: SearchPage<WSaladButton>(
                      searchStyle: const TextStyle(),
                      items: MPage3.list,
                      searchLabel: 'Search Fruit salad',
                      suggestion: const Center(
                        child: Text('Filter Fruit salad by name.'),
                      ),
                      failure: const Center(
                        child: Text('No Fruit Salad found :('),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const VPacket();
                }));
              },
              icon: const Icon(
                Icons.shopping_basket_outlined,
              ))
        ],
      ),
      body: Column(children: [
        SizedBox(
            height: 160,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(children: [
                  Text(
                    "Hello $name${MPage3.title}",
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 15),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Fruit Salad Combo",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
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
        )
      ]),
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruit_salad/model/m_page3.dart';
import 'package:fruit_salad/model/m_salad_name.dart';
import 'package:fruit_salad/model/m_salad_picture.dart';
import 'package:fruit_salad/view/v_packet.dart';
import 'package:fruit_salad/widget/w_salad_button.dart';
import 'package:search_page/search_page.dart';

class VPage3 extends StatelessWidget {
  VPage3({super.key, required this.name});
  final String name;
  final List<WSaladButton> list = [
    const WSaladButton(
      sail: 7,
      url: MSaladPicture.banana,
      data: MSaladName.banana,
    ),
    const WSaladButton(
      sail: 4,
      url: MSaladPicture.blueburrie,
      data: MSaladName.blueburrie,
    ),
    const WSaladButton(
      sail: 6,
      url: MSaladPicture.grabes,
      data: MSaladName.grabes,
    ),
    const WSaladButton(
      sail: 7,
      url: MSaladPicture.kiwi,
      data: MSaladName.kiwi,
    ),
    const WSaladButton(
      sail: 3,
      url: MSaladPicture.mango,
      data: MSaladName.mango,
    ),
    const WSaladButton(
      sail: 9,
      url: MSaladPicture.orange,
      data: MSaladName.orange,
    ),
    const WSaladButton(
      sail: 5,
      url: MSaladPicture.pineapple,
      data: MSaladName.pineapple,
    ),
    const WSaladButton(
      sail: 6,
      url: MSaladPicture.strawbery,
      data: MSaladName.strawbery,
    ),
  ];
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          actions: [
            IconButton(
              onPressed: () => showSearch(
                  context: context,
                  delegate: SearchPage<WSaladButton>(
                    barTheme: ThemeData(
                      colorScheme: const ColorScheme(
                          onSurface: Color.fromARGB(255, 255, 255, 255),
                          surface: Color.fromARGB(255, 255, 200, 0),
                          onBackground: Color.fromARGB(255, 255, 200, 0),
                          onError: Color.fromARGB(255, 255, 255, 255),
                          error: Color.fromARGB(255, 255, 200, 0),
                          onSecondary: Color.fromARGB(255, 255, 255, 255),
                          secondary: Color.fromARGB(255, 255, 200, 0),
                          onPrimary: Color.fromARGB(255, 255, 255, 255),
                          primary: Color.fromARGB(255, 255, 200, 0),
                          brightness: Brightness.light,
                          background: Color.fromARGB(255, 255, 200, 0)),
                    ),
                    searchStyle: const TextStyle(),
                    items: list,
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
                    builder: (WSaladButton salad) => ListTile(
                        title: WSaladButton(
                      data: salad.data,
                      url: salad.url,
                      sail: salad.sail,
                    )),
                  )),
              icon: const Icon(Icons.search_rounded,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            IconButton.outlined(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const VPacket();
                  }));
                },
                icon: const Icon(
                  Icons.shopping_basket_outlined,
                  color: Color.fromARGB(255, 255, 255, 255),
                ))
          ],
          backgroundColor: const Color.fromARGB(255, 255, 200, 0)),
      body: SingleChildScrollView(
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                const WSaladButton(
                  sail: 7,
                  url: MSaladPicture.banana,
                  data: MSaladName.banana,
                ),
                Container(
                  height: 20,
                ),
                const WSaladButton(
                    sail: 4,
                    url: MSaladPicture.blueburrie,
                    data: MSaladName.blueburrie),
                Container(
                  height: 20,
                ),
                const WSaladButton(
                    sail: 6,
                    url: MSaladPicture.grabes,
                    data: MSaladName.grabes),
                Container(
                  height: 20,
                ),
                const WSaladButton(
                    sail: 7, url: MSaladPicture.kiwi, data: MSaladName.kiwi),
                Container(
                  height: 20,
                ),
                const WSaladButton(
                    sail: 3, url: MSaladPicture.mango, data: MSaladName.mango),
                Container(
                  height: 20,
                ),
                const WSaladButton(
                    sail: 9,
                    url: MSaladPicture.orange,
                    data: MSaladName.orange),
                Container(
                  height: 20,
                ),
                Container(
                  height: 20,
                ),
                const WSaladButton(
                    sail: 5,
                    url: MSaladPicture.pineapple,
                    data: MSaladName.pineapple),
                Container(
                  height: 20,
                ),
                const WSaladButton(
                    sail: 6,
                    url: MSaladPicture.strawbery,
                    data: MSaladName.strawbery),
                Container(
                  height: 20,
                ),
              ]))),
    );
  }
}

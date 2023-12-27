part of '../import/import.dart';

class CPacketList with ChangeNotifier {
  static List<WPacketSalad> list = [
    WPacketSalad(
      sail: 7,
      url: MSaladPicture.banana,
      data: MLanguages.banana,
      counter: 0,
      index: 0,
    ),
    WPacketSalad(
      sail: 4,
      url: MSaladPicture.blueburrie,
      data: MLanguages.blueburrie,
      counter: 0,
      index: 1,
    ),
    WPacketSalad(
      sail: 6,
      url: MSaladPicture.grabes,
      data: MLanguages.grabes,
      counter: 0,
      index: 2,
    ),
    WPacketSalad(
      sail: 7,
      url: MSaladPicture.kiwi,
      data: MLanguages.kiwi,
      counter: 0,
      index: 3,
    ),
    WPacketSalad(
      sail: 3,
      url: MSaladPicture.mango,
      data: MLanguages.mango,
      counter: 0,
      index: 4,
    ),
    WPacketSalad(
      sail: 9,
      url: MSaladPicture.orange,
      data: MLanguages.orange,
      counter: 0,
      index: 5,
    ),
    WPacketSalad(
      sail: 5,
      url: MSaladPicture.pineapple,
      data: MLanguages.pineapple,
      counter: 0,
      index: 6,
    ),
    WPacketSalad(
      sail: 6,
      url: MSaladPicture.strawbery,
      data: MLanguages.strawbery,
      counter: 0,
      index: 7,
    ),
  ];

  ///[changeCounter] function take index and change counter of item for this index
  void changeCounter(int index, int counter) {
    list[index].counter = counter;
    notifyListeners();
  }

  ///[changeSail] function take index and change sail of item for this index
  void changeSail(int index, int sail) {
    list[index].sail = sail;
    notifyListeners();
  }
}

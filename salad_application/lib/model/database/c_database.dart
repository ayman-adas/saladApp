// ignore_for_file: unnecessary_null_comparison

part of './../../import/import.dart';

class CDatabase extends ChangeNotifier {
  static String? massage;
  static List<MDatabasePasket> pasketList = <MDatabasePasket>[];
  static int sailAll = 0;

  ///[createpasketAndUpdate] create item to pasket or update if exist
  Future<void> createpasketAndUpdate(MDatabasePasket pasket) async {
    if (await MDatabaseQuery.query.getSaladById(pasket) == null) {
      if (await MDatabaseQuery.query.createSalad(pasket) > 0) {
        massage = MLanguages.quantityInsertSucssess;
      } else {
        massage = MLanguages.quantityFailed;
      }
    } else {
      if (await MDatabaseQuery.query.updateSaladById(pasket) > 0) {
        massage = MLanguages.quantityUpdateSucssess;
      } else {
        massage = MLanguages.quantityFailed;
      }
    }

    selectitems();

    notifyListeners();
  }

  ///[deleteItem] delete item from the list
  Future<void> deleteItem(MDatabasePasket pasket) async {
    if (await MDatabaseQuery.query.deleteSaladById(pasket) > 0) {
      massage = MLanguages.quantitydeleteSucssess;
    } else {
      massage = MLanguages.quantityFailed;
    }
    selectitems();
    notifyListeners();
  }

  /// [selectitems] return all item in the list
  Future<void> selectitems() async {
    pasketList = await MDatabaseQuery.query.getSaladList;
    sailAll = 0;
    for (int i = 0; i < pasketList.length; i++) {
      sailAll += (pasketList[i].sail ?? 0) * (pasketList[i].counter ?? 0);
    }
    notifyListeners();
  }

  Future<int> sail() async {
    pasketList = await MDatabaseQuery.query.getSaladList;
    sailAll = 0;
    for (int i = 0; i < pasketList.length; i++) {
      sailAll += (pasketList[i].sail ?? 0) * (pasketList[i].counter ?? 0);
    }
    notifyListeners();
    return sailAll;
  }

  ///[convertToPasket] convert from fruit salad to pasket
  MDatabasePasket convertToPasket(MFruitSalad salad, int counter) {
    return MDatabasePasket(
      id: salad._id,
      englishName: salad._englishName,
      arabicName: salad._arabicName,
      image: salad._image,
      sail: salad._salary,
      counter: counter,
      timestamp: DateTime.now().microsecondsSinceEpoch.toString(),
    );
  }

  ///[convertTofruitSalad] convert from fruit pasket to salad

  MFruitSalad? convertTofruitSalad(
    MDatabasePasket pasket,
  ) {
    MFruitSalad? salad = MFruitSalad();
    salad._id = pasket.id;
    salad._englishName = pasket.englishName;
    salad._arabicName = pasket.arabicName;
    salad._count = pasket.counter ?? 0;
    salad._image = pasket.image;
    salad._salary = pasket.sail;

    return salad;
  }
}

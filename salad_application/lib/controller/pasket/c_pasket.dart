part of './../../import/import.dart';
// ignore_for_file: use_build_context_synchronously

class CPasket extends ChangeNotifier {
  MPasket pasket = MPasket();
  String? setErrorMessage;

  /// const variable
  static const String collectionsID = 'pasket cart';

  /// [collectionReference] path when storage data
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection(collectionsID);

  Future<bool> upload(BuildContext context) async {
    try {
      // start loading

      // check create user or not
      // task upload image user
      if (context.mounted) {
        Uuid uuid = const Uuid();
        pasket.setId(uuid.v1());
        // upload data to cloud database
        DocumentReference documentReference =
            await collectionReference.add(pasket.toMap());
        resetData(context);
        // check add news in cloud database
        if (documentReference.id.isEmpty) {
          setErrorMessage = MLanguages.nodata.tr();
          return false;
        } else {
          // reset Data
          if (context.mounted) resetData(context);
          return true;
        }
      }
    } catch (error) {
      // stop loading
      // update user when error register account
      setErrorMessage = error.toString();
      developer.log(error.toString());

      return false;
    }
    return true;
  }

  /// [resetData] delete all data and reset ui upload
  void resetData(BuildContext context) {
    // new object
    pasket = MPasket();

    // call provider image article
  

    MDatabaseQuery.query.deleteAllSalad();
  }

  Stream<List<MPasket>> get getAllAnswer {
    return collectionReference.snapshots().map(_fruitsFromSnapshots);
  }

  // get data as map and return list type of MAssstance
  List<MPasket> _fruitsFromSnapshots(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      return MPasket.fromMap(data);
    }).toList();
  }

  Future<List<MPasket>> categoryList() async {
    return await getAllAnswer.first;
  }
}

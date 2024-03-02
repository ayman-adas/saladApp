// ignore_for_file: use_build_context_synchronously

part of './../../import/import.dart';

class CAssisitance extends ChangeNotifier {
  MAssstance assistance = MAssstance();
  String? setErrorMessage;

  /// const variable
  static const String collectionsID = 'questionProplem';

  /// [collectionReference] path when storage data
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection(collectionsID);

  Future<bool> upload(BuildContext context) async {
    try {
      // start loading

      // check create user or not
      // task upload image user
      if (context.mounted) {
        ControllerImage controllerImageUser =
            Provider.of<ControllerImage>(context, listen: false);

        // change image user
        assistance.setImage(await controllerImageUser.uploadImage(
          'fruit assistance ',
        ));
        Uuid uuid = const Uuid();
        assistance.setId(uuid.v1());
        // upload data to cloud database
        DocumentReference documentReference =
            await collectionReference.add(assistance.toMap());
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
    assistance = MAssstance();

    // call provider image article
    ControllerImage controllerImage =
        Provider.of<ControllerImage>(context, listen: false);

    controllerImage.resetImage();
  }

  Stream<List<MAssstance>> get getAllAnswer {
    return collectionReference.snapshots().map(_fruitsFromSnapshots);
  }

  // get data as map and return list type of MAssstance
  List<MAssstance> _fruitsFromSnapshots(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      return MAssstance.fromMap(data);
    }).toList();
  }

  Future<List<MAssstance>> categoryList() async {
    return await getAllAnswer.first;
  }
}

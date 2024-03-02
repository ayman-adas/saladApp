// ignore_for_file: use_build_context_synchronously

part of './../../import/import.dart';

class CFruitsalad extends ChangeNotifier {
  MFruitSalad salad = MFruitSalad();
  String? setErrorMessage;

  /// const variable
  static const String collectionsID = 'fruitSalad';

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
        salad.setImageUrl(await controllerImageUser.uploadImage(
          'fruit salad ',
        ));
        Uuid uuid = const Uuid();
        salad.id = uuid.v1();
        // upload data to cloud database
        DocumentReference documentReference =
            await collectionReference.add(salad.toMap());
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
    salad = MFruitSalad();

    // call provider image article
    ControllerImage controllerImage =
        Provider.of<ControllerImage>(context, listen: false);

    controllerImage.resetImage();
  }

  Stream<List<MFruitSalad>> get getAllsalad {
    return collectionReference.snapshots().map(_fruitsFromSnapshots);
  }

  // get data as map and return list type of MFruitSalad
  List<MFruitSalad> _fruitsFromSnapshots(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      return MFruitSalad.fromMap(data);
    }).toList();
  }
}

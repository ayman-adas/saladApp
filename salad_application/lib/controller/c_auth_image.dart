part of './../import/import.dart';

class ControllerAuthImageUser extends ChangeNotifier {
  /// [imageUser] goal is save image user
  XFile?imageUser;

  /// [selectImage] choice image from gallery
  Future<void> selectImage(BuildContext context,
      {bool isGallery = true}) async {
    // create object from picker
    final ImagePicker picker = ImagePicker();

    // way get image user (gallery)
    imageUser = await picker.pickImage(
      source: isGallery ? ImageSource.gallery : ImageSource.camera,
    );

    if (imageUser != null && context.mounted) {
      Navigator.pop(context);
    }

    cropImage();
  }

  /// [cropImage] open edit image
  Future<void> cropImage() async {
    if (imageUser != null) {
      CroppedFile? croppedFile =
          await ImageCropper().cropImage(sourcePath: imageUser!.path);

      if (croppedFile != null) {
        // convert XFile
        imageUser = XFile(croppedFile.path);
      }

      notifyListeners();
    }
  }

  /// [getImageUser] check user image have or not
  /// image picker return File
  /// is not return Network image default
  ImageProvider getImageUser() {
    if (imageUser != null) {
      return FileImage(File(imageUser!.path));
    } else {
      return const NetworkImage(MSadalPictureListItem.userImage);
    }
  }
}

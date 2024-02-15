part of '../import/import.dart';

class ControllerAuth extends ChangeNotifier {
  /// [dataUser] create object for save data user
  ModelAccountUser dataUser = ModelAccountUser();

  /// [currentPass ] status isConfirm pass
  String currentPass = '';

  /// [changeCurrentPass] update current pass
  void changeCurrentPass(String? value) {
    currentPass = value ?? '';
    notifyListeners();
  }

  /// [resetAuth] reset provider
  void resetAuth() {
    // empty object (data)
    dataUser = ModelAccountUser();

    // reset pass current
    currentPass = '';
    notifyListeners();
  }

  // ------------------[Firebase]------------------
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  bool loading = false;
  String errorMessage = '';

  /// [changeLoading] change value loading
  set changeLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  /// [setErrorMessage] handle error auth
  set setErrorMessage(String value) {
    errorMessage = value;
    notifyListeners();
  }

  /// [register] create account on firebase when successful  return `true`  otherwise `false`
  Future<bool> register(BuildContext context) async {
    try {
      // start loading
      changeLoading = true;

      UserCredential userCredential =
          await firebaseAuth.createUserWithEmailAndPassword(
              email: dataUser.email!, password: dataUser.pass!);

      // check create user or not
      if (userCredential.user != null) {
        // task upload image user
        if (context.mounted) {
          ControllerImage controllerAuthImageUser =
              Provider.of<ControllerImage>(context, listen: false);

          // change image user
          userCredential.user?.updatePhotoURL(
              await controllerAuthImageUser.uploadImage('userImage') ??
                  MSadalPictureListItem.userImage);
        }

        // change user name
        userCredential.user?.updateDisplayName((dataUser.userName!));

        // stop loading
        changeLoading = false;
        return true;
      } else {
        // stop loading
        changeLoading = false;
        return false;
      }
    }
    //  on SocketException {
    //   // stop loading
    //   changeLoading = false;
    //   // update user when error register account
    //   setErrorMessage = tr(MLanguages.noconnect.tr());
    //   return false;
    // } on FirebaseAuthException catch (error) {
    //   // stop loading
    //   changeLoading = false;
    //   // update user when error register account
    //   setErrorMessage = error.message ?? 'error firebase ';

    //   return false;
    // }
    catch (error) {
      // stop loading
      changeLoading = false;
      // update user when error register account
      setErrorMessage = error.toString();
      developer.log(error.toString());
      developer.log(dataUser.email ?? '1');
      developer.log(dataUser.pass ?? '2');
      developer.log(dataUser.userName ?? '3');
      developer.log(dataUser.toString());

      return false;
    }
  }

  /// [login] login account on firebase when successful  return `true`  otherwise `false`
  Future<bool> login(BuildContext context) async {
    try {
      // start loading
      changeLoading = true;

      UserCredential userCredential =
          await firebaseAuth.signInWithEmailAndPassword(
              email: dataUser.email!, password: dataUser.pass!);

      // check create user or not
      if (userCredential.user != null) {
        // stop loading
        changeLoading = false;
        return true;
      } else {
        // stop loading
        changeLoading = false;
        return false;
      }
    }
    //  on SocketException {
    //   // stop loading
    //   changeLoading = false;
    //   // update user when error register account
    //   setErrorMessage = tr(MLanguages.noconnect.tr());
    //   return false;
    // } on FirebaseAuthException catch (error) {
    //   // stop loading
    //   changeLoading = false;
    //   // update user when error register account
    //   setErrorMessage = error.message ?? 'error firebase ';
    //   return false;
    // }
    catch (error) {
      // stop loading
      changeLoading = false;
      // update user when error register account
      setErrorMessage = error.toString();
      developer.log(error.toString());
      developer.log(userEmail);
      developer.log(userName);
      developer.log(dataUser.toString());
      return false;
    }
  }

  /// [resetPass] send email to user for create new password
  Future<void> resetPass() async {
    try {
      // start loading
      changeLoading = true;
      await firebaseAuth.sendPasswordResetEmail(email: dataUser.email!);
      // stop loading
      changeLoading = false;
    } on SocketException {
      // stop loading
      changeLoading = false;
      // update user when error register account
      setErrorMessage = tr(MLanguages.noconnect.tr());
    } on FirebaseAuthException catch (error) {
      // stop loading
      changeLoading = false;
      // update user when error register account
      setErrorMessage = error.message!;
    } catch (error) {
      // stop loading
      changeLoading = false;
      // update user when error register account
      setErrorMessage = error.toString();
      developer.log(error.toString());
      developer.log(userEmail);
      developer.log(userName);
      developer.log(dataUser.toString());
    }
  }

  /// [signOut] logout user account
  void signOut() async {
    try {
      await firebaseAuth.signOut();
    } on SocketException {
      // stop loading
      changeLoading = false;
      // update user when error register account
      setErrorMessage = tr(MLanguages.noconnect.tr());
    } on FirebaseAuthException catch (error) {
      // stop loading
      changeLoading = false;
      // update user when error register account
      setErrorMessage = error.message!;
    } catch (error) {
      // stop loading
      changeLoading = false;
      // update user when error register account
      setErrorMessage = error.toString();
    }
  }

  // ---------- user -------
  Stream<User?> get userState => firebaseAuth.authStateChanges();

  /// [userName] same displayName
  String get userName => firebaseAuth.currentUser?.displayName ?? 'user test';

  /// [userEmail]
  String get userEmail => firebaseAuth.currentUser?.email ?? 'user@gmial.com';

  /// [userPhoto]
  String get userPhoto =>
      firebaseAuth.currentUser?.photoURL ?? MSadalPictureListItem.userImage;
}

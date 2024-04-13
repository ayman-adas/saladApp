part of '../../import/import.dart';

class ModelAccountUser {
  //setter and getter for user account
  String? email;
  String? pass;
  String? userName;

  void setEmail(String? value) => email = value;

  void setPass(String? value) => pass = value;

  void setUserName(String? value) => userName = value;

  @override
  String toString() =>
      'ModelAccountUser(email: $email, pass: $pass, userName: $userName)';
}

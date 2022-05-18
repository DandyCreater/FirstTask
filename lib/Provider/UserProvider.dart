import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Models/AuthModel.dart';
import 'package:flutter_application_1/Models/UserModel.dart';

class UserProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel? newUser) {
    _user = newUser!;
    notifyListeners();
  }
}

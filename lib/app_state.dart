import 'package:flutter/foundation.dart';

class AppState with ChangeNotifier {
  String _username = '';

  String get username => _username;

  void setUsername(String username) {
    _username = username;
    notifyListeners();
  }
}
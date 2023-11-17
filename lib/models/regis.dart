import 'package:flutter/material.dart';

class UserIdProvider extends ChangeNotifier {
  String _userId = '';

  String get userId => _userId;

  set userId(String value) {
    _userId = value;
    notifyListeners();
  }
}
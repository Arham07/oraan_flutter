import 'package:flutter/material.dart';

class NumberProvider extends ChangeNotifier {
  int _number = 0;

  int get getNumber => _number;

  saveName(int number) {
    _number = number;
    notifyListeners();
  }
}

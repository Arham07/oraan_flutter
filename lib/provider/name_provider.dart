import 'package:flutter/material.dart';

class NameProvider extends ChangeNotifier {
  String _name = "";

  String get getName => _name;

  saveName(String name) {
    _name = name;
    notifyListeners();
  }
}
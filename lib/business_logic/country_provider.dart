import 'dart:collection';
import 'package:flutter/material.dart';

class CountryProvider with ChangeNotifier {
  final List<String> _items = <String>[
    "Pakistan +92",
    "Belgium +11",

  ];

  late String _selectedItem;

  UnmodifiableListView<String> get items => UnmodifiableListView(_items);

  String get selectedItem => _selectedItem;

  set selected(final String item) {
    _selectedItem = item;
    notifyListeners();
  }
}

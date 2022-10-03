import 'dart:collection';
import 'package:flutter/material.dart';

class SingleSelectCountry with ChangeNotifier {
  final List<String> _items = <String>[
    "Pakistan +92",
    "Belgium +11",

  ];

  late String _selectedItem;

  UnmodifiableListView<String> get items => UnmodifiableListView(this._items);

  String get selected => this._selectedItem;

  set selected(final String item) {
    this._selectedItem = item;
    this.notifyListeners();
  }
}

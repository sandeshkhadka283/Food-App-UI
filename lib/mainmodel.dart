import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class MainModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  set counter(int value) {
    if (value != _counter) {
      _counter = value;
      notifyListeners();
    }
  }

  int radiovalue = 0;

  int get RadioValue => radiovalue;

  set RadioValue(int value) {
    if (value != radiovalue) {
      radiovalue = value;
    }
    notifyListeners();
  }

  bool checkboxStatus = true;

  void toggleCheckbox() {
    checkboxStatus = !checkboxStatus;
    notifyListeners();
  }
}
